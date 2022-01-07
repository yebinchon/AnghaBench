
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;



__attribute__((used)) static inline ut64 xtensa_imm6s (ut64 addr, const ut8 *buf) {
 ut8 imm6 = (buf[1] >> 4) | (buf[0] & 0x30);
 return (addr + 4 + imm6);
}
