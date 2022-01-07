
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;



__attribute__((used)) static inline ut64 xtensa_imm8s (ut64 addr, ut8 imm8) {
 if (imm8 & 0x80) {
  return (addr + 4 + imm8 - 0x100);
 }
 return (addr + 4 + imm8);
}
