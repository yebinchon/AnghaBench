
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int* regs; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_MEMORY ;

__attribute__((used)) static int opfnstenv(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 switch (op->operands_count) {
 case 1:
  if ( op->operands[0].type & OT_MEMORY ) {
   data[l++] = 0xd9;
   data[l++] = 0x30 | op->operands[0].regs[0];
  } else {
   return -1;
  }
  break;
 default:
  return -1;
 }
 return l;
}
