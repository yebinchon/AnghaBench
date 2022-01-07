
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* operands; } ;
typedef TYPE_3__ aarch64_inst ;
struct TYPE_6__ {scalar_t__ regno; } ;
struct TYPE_7__ {int type; TYPE_1__ reg; } ;


 int AARCH64_OPND_NIL ;
 int copy_operand_info (TYPE_3__*,int,int) ;

__attribute__((used)) static int
convert_extr_to_ror (aarch64_inst *inst)
{
  if (inst->operands[1].reg.regno == inst->operands[2].reg.regno)
    {
      copy_operand_info (inst, 2, 3);
      inst->operands[3].type = AARCH64_OPND_NIL;
      return 1;
    }
  return 0;
}
