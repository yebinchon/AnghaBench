
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static const char *build_version_platform_to_string(ut32 platform) {
 switch (platform) {
 case 1:
  return "macOS";
 case 2:
  return "iOS";
 case 3:
  return "tvOS";
 case 4:
  return "watchOS";
 case 5:
  return "bridgeOS";
 case 6:
  return "iOSmac";
 case 7:
  return "iOS Simulator";
 case 8:
  return "tvOS Simulator";
 case 9:
  return "watchOS Simulator";
 default:
  return "unknown";
 }
}
