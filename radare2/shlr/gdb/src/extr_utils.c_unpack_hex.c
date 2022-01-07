
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int hex2int (char const) ;

int unpack_hex(const char *src, ut64 len, char *dst) {
 int i = 0;
 while (i < (len / 2)) {
  int val = hex2int (src[(i * 2)]);
  val <<= 4;
  val |= hex2int (src[(i * 2) + 1]);
  dst[i++] = val;
 }
 dst[i] = '\0';
 return len;
}
