
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int R_MIN (int,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void readstr(char *s, int sz, const ut8 *buf, int len) {
 *s = 0;
 int last = R_MIN (len, sz);
 if (last < 1) {
  return;
 }
 s[sz - 1] = 0;
 while (*s && *s == '\n') {
  s++;
 }
 strncpy (s, (char *) buf, last);
}
