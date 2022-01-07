
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int emission_counter; int optimization_counter; int inlining_counter; int generation_counter; scalar_t__ created_functions; } ;
typedef TYPE_1__ JitInstrumentation ;


 int INSTR_TIME_ADD (int ,int ) ;

void
InstrJitAgg(JitInstrumentation *dst, JitInstrumentation *add)
{
 dst->created_functions += add->created_functions;
 INSTR_TIME_ADD(dst->generation_counter, add->generation_counter);
 INSTR_TIME_ADD(dst->inlining_counter, add->inlining_counter);
 INSTR_TIME_ADD(dst->optimization_counter, add->optimization_counter);
 INSTR_TIME_ADD(dst->emission_counter, add->emission_counter);
}
