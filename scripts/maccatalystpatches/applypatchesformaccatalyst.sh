echo "Applying patch for package.json"
sed -i '' '/react-native-tor/d' ./package.json
rm -fr node_modules
echo "Re-installing node_modules"
npm i
echo "Applying patch for react-native-xcode.sh"
sed -i '' 's/--platform "$BUNDLE_PLATFORM"/--platform "ios"/g' ./node_modules/react-native/scripts/react-native-xcode.sh
echo ""
echo "NOTE: react-native-tor is not currently compatible with Mac Catalyst. If you are running macOS Catalina, you will need to remove the iOS 14 Widgets from the project targets."
