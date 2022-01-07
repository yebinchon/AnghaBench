
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ RAsmLm32Instruction ;


 int RAsmLm32InstrImm5InvalidBitsMask ;

__attribute__((used)) static bool is_invalid_imm5_instr(RAsmLm32Instruction *instr) {
 return instr->value & RAsmLm32InstrImm5InvalidBitsMask;
}
