
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ op; int src1_reg; } ;
typedef TYPE_1__ RAsmLm32Instruction ;


 scalar_t__ lm32_op_xnor ;

__attribute__((used)) static bool is_pseudo_instr_not(RAsmLm32Instruction *instr) {
 return (instr->op == lm32_op_xnor) && !instr->src1_reg;
}
