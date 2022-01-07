
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ op; } ;
typedef TYPE_1__ RAsmLm32Instruction ;


 scalar_t__ raise_instr ;

__attribute__((used)) static bool is_pseudo_instr_raise(RAsmLm32Instruction *instr) {
 return instr->op == raise_instr;
}
