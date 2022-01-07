
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {TYPE_1__* operands; } ;
struct TYPE_5__ {int type; int offset; int offset_sign; int* regs; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_MEMORY ;
 int ST8_MAX ;
 int ST8_MIN ;
 int is_valid_registers (TYPE_2__ const*) ;

__attribute__((used)) static int opclflush(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 int offset = 0;
 int mod_byte = 0;

 if (op->operands[0].type & OT_MEMORY) {
  data[l++] = 0x0f;
  data[l++] = 0xae;
  offset = op->operands[0].offset * op->operands[0].offset_sign;
  if (offset) {
   if (offset < ST8_MIN || offset > ST8_MAX) {
    mod_byte = 2;
   } else {
    mod_byte = 1;
   }
  }
  data[l++] = (mod_byte << 6) | (7 << 3) | op->operands[0].regs[0];
  if (mod_byte) {
   data[l++] = offset;
   if (mod_byte == 2) {
    data[l++] = offset >> 8;
    data[l++] = offset >> 16;
    data[l++] = offset >> 24;
   }
  }
 }
 return l;
}
