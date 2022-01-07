
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int numOperands; int opcodeMask; scalar_t__* operandTypes; int * operandMasks; } ;
struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int MAX_TOKEN_SIZE ;
 scalar_t__ OPERAND_LONG_ABSOLUTE_ADDRESS ;
 scalar_t__ OPERAND_REGISTER_GHOST ;
 int TOKEN_DELIM ;
 scalar_t__ assemble_operand (int *,char*,scalar_t__,int*) ;
 TYPE_2__* instructionSet ;
 int memset (char*,int ,int) ;
 int packDataByMask (int,int ) ;
 int r_strbuf_setbin (int *,int const*,int) ;
 int search_instruction (int *,char**,unsigned int) ;
 int strncpy (char*,char*,int) ;
 char* strtok (char*,int ) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *ao, const char *str) {
 char tokens[3][MAX_TOKEN_SIZE];
 char *token;
 uint32_t coded = 0;
 int len = 0;
 uint32_t op1 = 0, op2 = 0;
 unsigned int tokens_cnt = 0;
 int instr_idx = -1;



 token = strtok ((char *)str, TOKEN_DELIM);
 while (token != ((void*)0) && tokens_cnt < 3) {
  memset (tokens[tokens_cnt], 0, MAX_TOKEN_SIZE);
  strncpy (tokens[tokens_cnt], token, MAX_TOKEN_SIZE-1);
  token = strtok (((void*)0), TOKEN_DELIM);
  tokens_cnt += 1;
 }

 if (tokens_cnt > 0) {

  instr_idx = search_instruction (a, tokens, tokens_cnt - 1);

  if (instr_idx >= 0) {

   if (instructionSet[instr_idx].numOperands == 0 && tokens_cnt == 1) {
    coded = instructionSet[instr_idx].opcodeMask;
    len = 2;







   } else if (instructionSet[instr_idx].numOperands == 1 && tokens_cnt == 2) {

    if (assemble_operand (a, tokens[1], instructionSet[instr_idx].operandTypes[0], &op1) >= 0) {

     if (instructionSet[instr_idx].operandTypes[0] == OPERAND_LONG_ABSOLUTE_ADDRESS) {
      op1 = op1/2;
      coded = instructionSet[instr_idx].opcodeMask
      | packDataByMask((op1 >> 16), instructionSet[instr_idx].operandMasks[0]);

      coded |= ((uint16_t)op1) << 16;
      len = 4;
     } else {


      if (instructionSet[instr_idx].operandTypes[1] == OPERAND_REGISTER_GHOST) {
       coded = instructionSet[instr_idx].opcodeMask
       | packDataByMask(op1, instructionSet[instr_idx].operandMasks[0])
       | packDataByMask(op1, instructionSet[instr_idx].operandMasks[1]);
      } else {
       coded = instructionSet[instr_idx].opcodeMask
       | packDataByMask(op1, instructionSet[instr_idx].operandMasks[0]);
      }

      len = 2;
     }
    }

   } else if (instructionSet[instr_idx].numOperands == 2 && tokens_cnt == 3) {
    if (assemble_operand(a, tokens[1], instructionSet[instr_idx].operandTypes[0], &op1) >= 0 &&
       assemble_operand(a, tokens[2], instructionSet[instr_idx].operandTypes[1], &op2) >= 0) {

     coded = instructionSet[instr_idx].opcodeMask
      | packDataByMask(op1, instructionSet[instr_idx].operandMasks[0])
      | packDataByMask(op2, instructionSet[instr_idx].operandMasks[1]);

     len = 2;


     if (instructionSet[instr_idx].operandTypes[0] == OPERAND_LONG_ABSOLUTE_ADDRESS) {
      coded |= ((uint16_t)op1) << 16;
      len = 4;
     } else if (instructionSet[instr_idx].operandTypes[1] == OPERAND_LONG_ABSOLUTE_ADDRESS) {
      coded |= ((uint16_t)op2) << 16;
      len = 4;
     }
    }
   }
  }
 }


 if (len > 0) {
  r_strbuf_setbin (&ao->buf, (const ut8*)&coded, len);
 }
 return len;
}
