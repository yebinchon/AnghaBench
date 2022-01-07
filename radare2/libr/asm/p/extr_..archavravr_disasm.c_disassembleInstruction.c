
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* operands; TYPE_4__* instruction; int * alternateInstruction; int address; } ;
typedef TYPE_1__ disassembledInstruction ;
struct TYPE_9__ {int opcode; int address; } ;
typedef TYPE_2__ assembledInstruction ;
struct TYPE_10__ {int numOperands; scalar_t__* operandTypes; int * operandMasks; int mnemonic; } ;


 scalar_t__ AVR_LONG_INSTRUCTION_FOUND ;
 scalar_t__ AVR_LONG_INSTRUCTION_PRINT ;
 int AVR_Long_Address ;
 scalar_t__ AVR_Long_Instruction ;
 int AVR_TOTAL_INSTRUCTIONS ;
 int ERROR_INVALID_ARGUMENTS ;
 scalar_t__ OPERAND_LONG_ABSOLUTE_ADDRESS ;
 scalar_t__ disassembleOperands (TYPE_1__*) ;
 int extractDataFromMask (int,int ) ;
 TYPE_4__* instructionSet ;
 TYPE_1__ longInstruction ;
 int lookupInstruction (int,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int disassembleInstruction(disassembledInstruction *dInstruction, const assembledInstruction aInstruction) {
 int insidx, i;

 if (!dInstruction)
  return ERROR_INVALID_ARGUMENTS;



 insidx = lookupInstruction(aInstruction.opcode, 0);
 if (insidx == AVR_TOTAL_INSTRUCTIONS) {

  return 0;
 }




 if (AVR_Long_Instruction == AVR_LONG_INSTRUCTION_FOUND) {
  AVR_Long_Instruction = AVR_LONG_INSTRUCTION_PRINT;
  AVR_Long_Address |= aInstruction.opcode;




                if(!strcmp(longInstruction.instruction->mnemonic,"call")||
                   !strcmp(longInstruction.instruction->mnemonic,"jmp"))
         {
   AVR_Long_Address *= 2;
                }
  *dInstruction = longInstruction;
  return 0;


 } else if (AVR_Long_Instruction == AVR_LONG_INSTRUCTION_PRINT) {
  AVR_Long_Instruction = 0;
 }



 dInstruction->address = aInstruction.address;
 dInstruction->instruction = &instructionSet[insidx];
 dInstruction->alternateInstruction = ((void*)0);



 for (i = 0; i < instructionSet[insidx].numOperands; i++) {
  dInstruction->operands[i] = extractDataFromMask(aInstruction.opcode, dInstruction->instruction->operandMasks[i]);



  if (dInstruction->instruction->operandTypes[i] == OPERAND_LONG_ABSOLUTE_ADDRESS) {
   AVR_Long_Instruction = AVR_LONG_INSTRUCTION_FOUND;
   AVR_Long_Address = dInstruction->operands[i] << 16;
   longInstruction = *dInstruction;
  }
 }


 if (disassembleOperands(dInstruction) < 0)
  return ERROR_INVALID_ARGUMENTS;

 if (AVR_Long_Instruction == AVR_LONG_INSTRUCTION_FOUND) {



  longInstruction = *dInstruction;
 }

 return 0;
}
