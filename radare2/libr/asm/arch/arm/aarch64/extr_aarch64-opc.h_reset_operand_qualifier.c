
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* operands; int opcode; } ;
typedef TYPE_2__ aarch64_inst ;
struct TYPE_4__ {int qualifier; } ;


 int AARCH64_OPND_QLF_NIL ;
 int aarch64_num_of_operands (int ) ;
 int assert (int) ;

__attribute__((used)) static inline void
reset_operand_qualifier (aarch64_inst *inst, int idx)
{
  assert (idx >=0 && idx < aarch64_num_of_operands (inst->opcode));
  inst->operands[idx].qualifier = AARCH64_OPND_QLF_NIL;
}
