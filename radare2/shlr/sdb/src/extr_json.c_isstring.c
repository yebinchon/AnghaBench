
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool isstring(const char *s) {
 if (!strcmp (s, "true")) {
  return 0;
 }
 if (!strcmp (s, "false")) {
  return 0;
 }
 for (; *s; s++) {
  if (*s < '0' || *s > '9') {
   return 1;
  }
 }
 return 0;
}
