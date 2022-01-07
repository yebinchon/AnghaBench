
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mnemonic; int numOperands; int opcodeMask; scalar_t__* operandTypes; } ;
typedef int RAsm ;


 int AVR_TOTAL_INSTRUCTIONS ;
 int MAX_TOKEN_SIZE ;
 scalar_t__ OPERAND_LONG_ABSOLUTE_ADDRESS ;
 int getnum (int *,char*) ;
 TYPE_1__* instructionSet ;
 scalar_t__ parse_specialreg (char*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static int search_instruction(RAsm *a, char instr[3][MAX_TOKEN_SIZE], int args) {
 int i, op1 = 0, op2 = 0;

 for (i = 0; i < AVR_TOTAL_INSTRUCTIONS - 1; i++) {

  if (!strncmp (instr[0], instructionSet[i].mnemonic, MAX_TOKEN_SIZE)) {

   if (instructionSet[i].numOperands == args) {


    if (args != 2) {
     return i;
    }

    if (instructionSet[i].opcodeMask >= 0x9004 &&
     instructionSet[i].opcodeMask <= 0x9007) {
     if (instructionSet[i].operandTypes[1] == parse_specialreg (instr[2])) {
      return i;
     }

    } else if (instructionSet[i].mnemonic[0] == 'l'
     && instructionSet[i].mnemonic[1] == 'd'
     && (instructionSet[i].mnemonic[2] == 'd' || instructionSet[i].mnemonic[2] == '\0')) {
     if (instructionSet[i].operandTypes[1] == parse_specialreg (instr[2])) {
      return i;
     }

    } else if (instructionSet[i].mnemonic[0] == 'l'
     && instructionSet[i].mnemonic[1] == 'd'
     && instructionSet[i].mnemonic[2] == 's'
     && instructionSet[i].operandTypes[1] == OPERAND_LONG_ABSOLUTE_ADDRESS) {

     if (strlen(instr[2]) > 0) {
      op2 = getnum (a, instr[2]);
      if (op2 > 127) {
       return i;
      }
     }

    } else if (instructionSet[i].mnemonic[0] == 's'
     && instructionSet[i].mnemonic[1] == 't'
     && (instructionSet[i].mnemonic[2] == 'd' || instructionSet[i].mnemonic[2] == '\0')) {

     if (instructionSet[i].operandTypes[0] == parse_specialreg (instr[1])) {
      return i;
     }

    } else if (instructionSet[i].mnemonic[0] == 's'
     && instructionSet[i].mnemonic[1] == 't'
     && instructionSet[i].mnemonic[2] == 's'
     && instructionSet[i].operandTypes[0] == OPERAND_LONG_ABSOLUTE_ADDRESS) {

     if (strlen(instr[1]) > 0) {
      op1 = getnum (a, instr[1]);
      if (op1 > 127) {
       return i;
      }
     }
    } else {
     return i;
    }
   }
  }
 }
 return -1;
}
