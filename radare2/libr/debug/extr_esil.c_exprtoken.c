
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static int exprtoken(RDebug *dbg, char *s, const char *sep, char **o) {
 char *p = strstr (s, sep);
 if (p) {
  *p = 0;
  p += strlen (sep);
  *o = p;
  return 1;
 }
 *o = ((void*)0);
 return 0;
}
