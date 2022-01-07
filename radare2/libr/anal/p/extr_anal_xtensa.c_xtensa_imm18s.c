
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;



__attribute__((used)) static inline ut64 xtensa_imm18s (ut64 addr, const ut8 *buf) {
 ut32 offset = (buf[0] >> 6) | (((ut32)buf[1]) << 2) | (((ut32)buf[2]) << 10);
 if (offset & 0x20000) {
  return addr + 4 + offset - 0x40000;
 }
 return addr + 4 + offset;
}
