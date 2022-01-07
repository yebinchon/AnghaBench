
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Type {char* name; scalar_t__ code; } ;


 int strlen (scalar_t__) ;
 int strncmp (char const*,scalar_t__,int) ;

__attribute__((used)) static const char *resolve(struct Type *t, const char *foo, const char **bar) {
 if (!t || !foo || !*foo) {
  return ((void*)0);
 }
 for (; t[0].code; t++) {
  int len = strlen (t[0].code);
  if (!strncmp (foo, t[0].code, len)) {
   if (bar) {
    *bar = t[0].name;
   }
   return foo + len;
  }
 }
 return ((void*)0);
}
