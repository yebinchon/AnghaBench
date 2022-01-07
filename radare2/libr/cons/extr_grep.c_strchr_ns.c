
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 char* strchr (char*,char const) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *strchr_ns (char *s, const char ch) {
 char *p = strchr (s, ch);
 if (p && p > s) {
  char *prev = p - 1;
  if (*prev == '\\') {
   memmove (prev, p, strlen (p) + 1);
   return strchr_ns (p, ch);
  }
 }
 return p;
}
