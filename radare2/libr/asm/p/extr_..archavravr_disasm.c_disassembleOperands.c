
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* operands; TYPE_1__* instruction; } ;
typedef TYPE_2__ disassembledInstruction ;
struct TYPE_4__ {int numOperands; int* operandTypes; } ;


 int ERROR_INVALID_ARGUMENTS ;







__attribute__((used)) static int disassembleOperands(disassembledInstruction *dInstruction) {
 int i;


 if (!dInstruction)
  return ERROR_INVALID_ARGUMENTS;
 if (!dInstruction->instruction)
  return ERROR_INVALID_ARGUMENTS;


 for (i = 0; i < dInstruction->instruction->numOperands; i++) {
  switch (dInstruction->instruction->operandTypes[i]) {
  case 133:
   dInstruction->operands[i] <<= 1;
   if (dInstruction->operands[i] & 0x80) {




    dInstruction->operands[i] = (~dInstruction->operands[i]+1)&0x7F;
    dInstruction->operands[i] = -dInstruction->operands[i]+2;
   } else {
    dInstruction->operands[i] += 2;
   }
   break;
  case 128:
   dInstruction->operands[i] <<= 1;
   if (dInstruction->operands[i] & 0x1000) {




    short val = ((~dInstruction->operands[i]) ) & 0xFFF;

    dInstruction->operands[i] = -val + 1;

   } else {
    dInstruction->operands[i] += 2;
   }
   break;
  case 129:
   dInstruction->operands[i] = 16 + dInstruction->operands[i] ;
   break;
  case 131:
   dInstruction->operands[i] = dInstruction->operands[i] * 2;
   break;
  case 130:
   dInstruction->operands[i] = 24 + (dInstruction->operands[i] * 2);
   break;
  case 132:
   dInstruction->operands[i] = ~dInstruction->operands[i] & 0xFF;
   break;
  default:
   break;
  }
 }
 return 0;
}
