
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_9__ {char* cpu; int const mask; char* mnemonic; int op_type; int (* decode ) (TYPE_2__*,int const*) ;} ;
typedef TYPE_1__ amd29k_instruction_t ;
struct TYPE_10__ {char* mnemonic; int op_type; } ;
typedef TYPE_2__ amd29k_instr_t ;


 char* CPU_29000 ;
 int N_AMD29K_INSTRUCTIONS ;
 int R_ANAL_OP_TYPE_NOP ;
 TYPE_1__* amd29k_instructions ;
 int decode_none (TYPE_2__*,int const*) ;
 int strlen (char const*) ;
 int stub1 (TYPE_2__*,int const*) ;
 int stub2 (TYPE_2__*,int const*) ;
 int stub3 (TYPE_2__*,int const*) ;

bool amd29k_instr_decode(const ut8* buffer, const ut32 buffer_size, amd29k_instr_t* instruction, const char* cpu) {
 if (!buffer || buffer_size < 4 || !instruction || (cpu && strlen (cpu) < 5)) {
  return 0;
 }
 if (!cpu) {
  cpu = CPU_29000;
 }
 if (buffer[0] == 0x70 && buffer[1] == 0x40 && buffer[2] == 0x01 && buffer[3] == 0x01) {
  decode_none (instruction, buffer);
  instruction->mnemonic = "nop";
  instruction->op_type = R_ANAL_OP_TYPE_NOP;
  return 1;
 }
 int i;
 for (i = 0; i < N_AMD29K_INSTRUCTIONS; i++) {
  const amd29k_instruction_t *in = &amd29k_instructions[i];
  if (in->cpu[0] == '*' && in->mask == buffer[0]) {
   in->decode (instruction, buffer);
   instruction->mnemonic = in->mnemonic;
   instruction->op_type = in->op_type;
   return 1;
  } else if (in->cpu[0] != '*' && in->cpu[3] == '0' && in->mask == buffer[0]) {
   in->decode (instruction, buffer);
   instruction->mnemonic = in->mnemonic;
   instruction->op_type = in->op_type;
   return 1;
  } else if (in->cpu[0] != '*' && in->cpu[3] == '5' && in->mask == buffer[0]) {
   in->decode (instruction, buffer);
   instruction->mnemonic = in->mnemonic;
   instruction->op_type = in->op_type;
   return 1;
  }
 }
 return 0;
}
