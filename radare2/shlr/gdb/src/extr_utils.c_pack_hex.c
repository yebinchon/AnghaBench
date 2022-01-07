
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 char int2hex (char const) ;

int pack_hex(const char *src, ut64 len, char *dst) {
 int i = 0;
 int x = 0;
 while (i < (len * 2)) {
  int val = (src[x] & 0xf0) >> 4;
  dst[i++] = int2hex (val);
  dst[i++] = int2hex (src[x++] & 0x0f);
 }
 dst[i] = '\0';
 return (len / 2);
}
