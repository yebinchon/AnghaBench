
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *getrange(char *s) {
 char *p = ((void*)0);
 while (s && *s) {
  if (*s == ',') {
   p = s+1;
   *p=0;
  }
  if (*s == '[' || *s == ']') {
   memmove (s, s + 1, strlen (s + 1) + 1);
  }
  if (*s == '}') {
   *s = 0;
  }
  s++;
 }
 while (p && *p == ' ') {
  p++;
 }
 return p;
}
