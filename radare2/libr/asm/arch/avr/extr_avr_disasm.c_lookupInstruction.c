
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__* operandTypes; scalar_t__* operandMasks; scalar_t__ opcodeMask; } ;


 int AVR_MAX_NUM_OPERANDS ;
 int AVR_TOTAL_INSTRUCTIONS ;
 scalar_t__ OPERAND_REGISTER_GHOST ;
 scalar_t__ extractDataFromMask (scalar_t__,scalar_t__) ;
 TYPE_1__* instructionSet ;

__attribute__((used)) static int lookupInstruction(uint16_t opcode, int offset) {
 uint16_t opcodeSearch, operandTemp;
 int insidx, ghostRegisterConfirmed, i, j;

 for (insidx = offset; insidx < AVR_TOTAL_INSTRUCTIONS; insidx++) {
  opcodeSearch = opcode;


  ghostRegisterConfirmed = 1;





  for (i = 0; i < AVR_MAX_NUM_OPERANDS; i++) {
   if (instructionSet[insidx].operandTypes[i] == OPERAND_REGISTER_GHOST) {

    operandTemp = extractDataFromMask(opcode, instructionSet[insidx].operandMasks[0]);

    for (j = 1; j < AVR_MAX_NUM_OPERANDS; j++) {
     if (extractDataFromMask(opcode, instructionSet[insidx].operandMasks[i]) !=
       operandTemp)
      ghostRegisterConfirmed = 0;
    }
   }
   opcodeSearch &= ~(instructionSet[insidx].operandMasks[i]);
  }



  if (ghostRegisterConfirmed == 0)
   continue;

  if (opcodeSearch == instructionSet[insidx].opcodeMask)
   break;
 }




 return insidx;
}
