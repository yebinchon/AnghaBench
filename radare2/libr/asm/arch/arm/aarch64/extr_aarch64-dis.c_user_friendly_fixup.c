
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* operands; TYPE_1__* opcode; } ;
typedef TYPE_4__ aarch64_inst ;
struct TYPE_7__ {int value; } ;
struct TYPE_8__ {int qualifier; TYPE_2__ imm; } ;
struct TYPE_6__ {int iclass; } ;


 int AARCH64_OPND_QLF_W ;


__attribute__((used)) static void
user_friendly_fixup (aarch64_inst *inst)
{
  switch (inst->opcode->iclass)
    {
    case 128:






      if (inst->operands[1].imm.value < 32)
 inst->operands[0].qualifier = AARCH64_OPND_QLF_W;
      break;
    default: break;
    }
}
