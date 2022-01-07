
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int formattingOptions ;
struct TYPE_6__ {TYPE_1__* instruction; } ;
typedef TYPE_2__ disassembledInstruction ;
struct TYPE_5__ {char* mnemonic; int numOperands; } ;


 scalar_t__ AVR_LONG_INSTRUCTION_FOUND ;
 scalar_t__ AVR_Long_Instruction ;
 int formatDisassembledOperand (char*,int,TYPE_2__ const,int ) ;
 int strcat (char*,char*) ;

__attribute__((used)) static int printDisassembledInstruction(char *out, const disassembledInstruction dInstruction, formattingOptions fOptions) {

 int retVal, i;
 char strOperand[256];
 *out = '\0';



 if (AVR_Long_Instruction == AVR_LONG_INSTRUCTION_FOUND)
  return 0;

 strcat (out, dInstruction.instruction->mnemonic);
 if (dInstruction.instruction->numOperands > 0)
  strcat (out, " ");

 for (i = 0; i < dInstruction.instruction->numOperands; i++) {


  if (i > 0 && i != dInstruction.instruction->numOperands)
   strcat (out, ", ");

  retVal = formatDisassembledOperand(strOperand, i, dInstruction, fOptions);
  if (retVal < 0)
   return retVal;

  strcat (out, strOperand);
 }

 return 1;
}
