
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDB_RS ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static const char *Aindexof(const char *str, int idx) {
 int len = 0;
 const char *n, *p = str;
 for (len = 0; ; len++) {
  if (len == idx) {
   return p;
  }
  if (!(n = strchr (p, SDB_RS))) {
   break;
  }
  p = n + 1;
 }
 return ((void*)0);
}
