
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* operands; } ;
typedef TYPE_3__ aarch64_inst ;
struct TYPE_11__ {int value; } ;
struct TYPE_8__ {scalar_t__ regno; } ;
struct TYPE_9__ {int type; TYPE_4__* cond; TYPE_1__ reg; } ;


 int AARCH64_OPND_NIL ;
 int copy_operand_info (TYPE_3__*,int,int) ;
 TYPE_4__* get_inverted_cond (TYPE_4__*) ;

__attribute__((used)) static int
convert_from_csel (aarch64_inst *inst)
{
  if (inst->operands[1].reg.regno == inst->operands[2].reg.regno
      && (inst->operands[3].cond->value & 0xe) != 0xe)
    {
      copy_operand_info (inst, 2, 3);
      inst->operands[2].cond = get_inverted_cond (inst->operands[3].cond);
      inst->operands[3].type = AARCH64_OPND_NIL;
      return 1;
    }
  return 0;
}
