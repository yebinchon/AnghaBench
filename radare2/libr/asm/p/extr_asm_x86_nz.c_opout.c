
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int st32 ;
struct TYPE_6__ {TYPE_1__* operands; } ;
struct TYPE_5__ {scalar_t__ reg; int type; int immediate; int sign; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_BYTE ;
 int OT_CONSTANT ;
 int OT_DWORD ;
 int OT_WORD ;
 scalar_t__ X86R_AL ;
 scalar_t__ X86R_AX ;
 scalar_t__ X86R_DX ;
 scalar_t__ X86R_EAX ;
 int is_valid_registers (TYPE_2__ const*) ;

__attribute__((used)) static int opout(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 st32 immediate = 0;
 if (op->operands[0].reg == X86R_DX) {
  if (op->operands[1].reg == X86R_AL && op->operands[1].type & OT_BYTE) {
   data[l++] = 0xee;
   return l;
  }
  if (op->operands[1].reg == X86R_AX && op->operands[1].type & OT_WORD) {
   data[l++] = 0x66;
   data[l++] = 0xef;
   return l;
  }
  if (op->operands[1].reg == X86R_EAX && op->operands[1].type & OT_DWORD) {
   data[l++] = 0xef;
   return l;
  }
 } else if (op->operands[0].type & OT_CONSTANT) {
  immediate = op->operands[0].immediate * op->operands[0].sign;
  if (immediate > 255 || immediate < -128) {
   return -1;
  }
  if (op->operands[1].reg == X86R_AL && op->operands[1].type & OT_BYTE) {
   data[l++] = 0xe6;
  } else if (op->operands[1].reg == X86R_AX && op->operands[1].type & OT_WORD) {
   data[l++] = 0x66;
   data[l++] = 0xe7;
  } else if (op->operands[1].reg == X86R_EAX && op->operands[1].type & OT_DWORD) {
   data[l++] = 0xe7;
  } else {
   return -1;
  }
  data[l++] = immediate;
 } else {
  return -1;
 }
 return l;
}
