
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static const char *build_version_tool_to_string(ut32 tool) {
 switch (tool) {
 case 1:
  return "clang";
 case 2:
  return "swift";
 case 3:
  return "ld";
 default:
  return "unknown";
 }
}
