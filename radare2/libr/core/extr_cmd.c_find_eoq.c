
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *find_eoq(char *p) {
 for (; *p; p++) {
  if (*p == '"') {
   break;
  }
  if (*p == '\\' && p[1] == '"') {
   p++;
  }
 }
 return p;
}
