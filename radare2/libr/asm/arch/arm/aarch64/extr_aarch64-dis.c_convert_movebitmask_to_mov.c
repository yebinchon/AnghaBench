
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {TYPE_3__* operands; } ;
typedef TYPE_4__ aarch64_inst ;
struct TYPE_8__ {int regno; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_9__ {scalar_t__ qualifier; int type; TYPE_2__ reg; TYPE_1__ imm; } ;


 int AARCH64_OPND_IMM_MOV ;
 int AARCH64_OPND_NIL ;
 scalar_t__ AARCH64_OPND_QLF_W ;
 scalar_t__ aarch64_wide_constant_p (int ,int,int *) ;
 int assert (int) ;
 int copy_operand_info (TYPE_4__*,int,int) ;

__attribute__((used)) static int
convert_movebitmask_to_mov (aarch64_inst *inst)
{
  int is32;
  uint64_t value;


  assert (inst->operands[1].reg.regno == 0x1f);
  copy_operand_info (inst, 1, 2);
  is32 = inst->operands[0].qualifier == AARCH64_OPND_QLF_W;
  inst->operands[1].type = AARCH64_OPND_IMM_MOV;
  value = inst->operands[1].imm.value;


  if (inst->operands[0].reg.regno != 0x1f
      && (aarch64_wide_constant_p (value, is32, ((void*)0))
   || aarch64_wide_constant_p (~value, is32, ((void*)0))))
    return 0;

  inst->operands[2].type = AARCH64_OPND_NIL;
  return 1;
}
