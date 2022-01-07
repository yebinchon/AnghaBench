
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char lastChar (char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int strstr (char const*,char const*) ;

__attribute__((used)) static bool match(const char *str, const char *expr) {
 bool startsWith = *expr == '^';
 bool endsWith = lastChar (expr) == '$';
 if (startsWith && endsWith) {
  return strlen (str) == strlen (expr) - 2 && !strncmp (str, expr + 1, strlen (expr) - 2);

 }
 if (startsWith) {
  return !strncmp (str, expr + 1, strlen (expr) - 1);
 }
 if (endsWith) {
  int alen = strlen (str);
  int blen = strlen (expr) - 1;
  if (alen <= blen) {
   return 0;
  }
  const char *a = str + strlen (str) - blen;
  return (!strncmp (a, expr, blen));
 }
 return strstr (str, expr);
}
