
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut16 ;



__attribute__((used)) static inline ut64 xtensa_imm12s (ut64 addr, const ut8 *buf) {
 ut16 imm12 = (buf[1] >> 4) | (((ut16)buf[2]) << 4);
 if (imm12 & 0x800) {
  return (addr + 4 + imm12 - 0x1000);
 }
 return (addr + 4 + imm12);
}
