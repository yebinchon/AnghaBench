
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int reg; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_FPUREG ;
 int OT_REGALL ;

__attribute__((used)) static int opfxch(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 switch (op->operands_count) {
 case 0:
  data[l++] = 0xd9;
  data[l++] = 0xc9;
  break;
 case 1:
  if (op->operands[0].type & OT_FPUREG & ~OT_REGALL) {
   data[l++] = 0xd9;
   data[l++] = 0xc8 | op->operands[0].reg;
  } else {
   return -1;
  }
  break;
 default:
  return -1;
 }
 return l;
}
