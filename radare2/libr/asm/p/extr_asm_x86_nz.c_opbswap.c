
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {TYPE_1__* operands; } ;
struct TYPE_5__ {int type; scalar_t__ reg; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_DWORD ;
 int OT_QWORD ;
 int OT_REGALL ;
 scalar_t__ X86R_UNDEFINED ;
 int is_valid_registers (TYPE_2__ const*) ;

__attribute__((used)) static int opbswap(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 if (op->operands[0].type & OT_REGALL) {
  is_valid_registers (op);
  if (op->operands[0].reg == X86R_UNDEFINED) {
   return -1;
  }

  if (op->operands[0].type & OT_QWORD) {
   data[l++] = 0x48;
   data[l++] = 0x0f;
   data[l++] = 0xc8 + op->operands[0].reg;
  } else if (op->operands[0].type & OT_DWORD) {
   data[l++] = 0x0f;
   data[l++] = 0xc8 + op->operands[0].reg;
  } else {
   return -1;
  }
 }
 return l;
}
