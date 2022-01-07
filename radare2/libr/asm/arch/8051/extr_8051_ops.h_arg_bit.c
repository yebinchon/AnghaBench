
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static inline ut8 arg_bit (ut8 bit_addr) {
 if (bit_addr < 0x80) {

  return (bit_addr >> 3) + 0x20;
 }

 return bit_addr & 0xf8;
}
