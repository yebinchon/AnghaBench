
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* operands; int mnemonic; } ;
typedef TYPE_1__ amd29k_instr_t ;


 int strcmp (int ,char*) ;

bool amd29k_instr_is_ret(amd29k_instr_t* instruction) {
 if (instruction && !strcmp (instruction->mnemonic, "calli") && instruction->operands[0] == 128 && instruction->operands[1] == 128) {
  return 1;
 }
 return 0;
}
