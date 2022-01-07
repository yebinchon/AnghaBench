
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool __is_data_section(const char *name) {
 if (strstr (name, "_cstring")) {
  return 1;
 }
 if (strstr (name, "_os_log")) {
  return 1;
 }
 if (strstr (name, "_objc_methname")) {
  return 1;
 }
 if (strstr (name, "_objc_classname")) {
  return 1;
 }
 if (strstr (name, "_objc_methtype")) {
  return 1;
 }
 return 0;
}
