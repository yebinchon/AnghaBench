
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static ut8 getsib(const ut8 sib) {
 if (!sib) {
  return 0;
 }
 return (sib & 0x8) ? 3 : getsib ((sib << 1) | 1) - 1;
}
