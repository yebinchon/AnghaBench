
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int st32 ;



__attribute__((used)) static ut64 getaddr(ut64 addr, const ut8 *d) {
 if (d[2] >> 7) {

  st32 n = (d[0] + (d[1] << 8) + (d[2] << 16) + ((ut64)(0xff) << 24));
  n = -n;
  return addr - (n * 4);
 }
 return addr + (4 * (d[0] + (d[1] << 8) + (d[2] << 16)));
}
