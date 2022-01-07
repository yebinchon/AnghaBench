
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_5__ {int type; int* regs; int reg; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_BYTE ;
 int OT_MEMORY ;
 int OT_QWORD ;
 int OT_WORD ;
 int is_valid_registers (TYPE_2__ const*) ;

__attribute__((used)) static int opdiv(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;

 if ( op->operands[0].type & OT_QWORD ) {
  data[l++] = 0x48;
 }
 switch (op->operands_count) {
 case 1:
  if ( op->operands[0].type & OT_WORD ) {
   data[l++] = 0x66;
  }
  if (op->operands[0].type & OT_BYTE) {
   data[l++] = 0xf6;
  } else {
   data[l++] = 0xf7;
  }
  if (op->operands[0].type & OT_MEMORY) {
   data[l++] = 0x30 | op->operands[0].regs[0];
  } else {
   data[l++] = 0xf0 | op->operands[0].reg;
  }
  break;
 default:
  return -1;
 }
 return l;
}
