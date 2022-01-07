
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static ut8 gprobe_checksum (const ut8 *p, unsigned int size) {
 ut8 res = 0;
 unsigned int k;

 for (k = 0; k < size; ++k) {
  res += p[k];
 }

 res = ~res + 1;

 return res;
}
