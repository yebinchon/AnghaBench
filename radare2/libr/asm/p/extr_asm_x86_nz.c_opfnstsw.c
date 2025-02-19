
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int* regs; int reg; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_GPREG ;
 int OT_MEMORY ;
 int OT_WORD ;
 int X86R_AX ;

__attribute__((used)) static int opfnstsw(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 switch (op->operands_count) {
 case 1:
  if ( op->operands[0].type & OT_MEMORY &&
       op->operands[0].type & OT_WORD ) {
   data[l++] = 0xdd;
   data[l++] = 0x38 | op->operands[0].regs[0];
  } else if ( op->operands[0].type & OT_GPREG &&
       op->operands[0].type & OT_WORD &&
       op->operands[0].reg == X86R_AX ) {
   data[l++] = 0xdf;
   data[l++] = 0xe0;
  } else {
   return -1;
  }
  break;
 default:
  return -1;
 }
 return l;
}
