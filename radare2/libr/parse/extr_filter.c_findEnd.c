
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HEXCHAR (char const) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *findEnd(const char *s) {
 while (*s == 'x' || IS_HEXCHAR (*s)) {
  s++;

 }
 return strdup (s);
}
