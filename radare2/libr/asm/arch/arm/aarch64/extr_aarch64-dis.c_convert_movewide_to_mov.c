
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {TYPE_4__* operands; TYPE_1__* opcode; } ;
typedef TYPE_5__ aarch64_inst ;
struct TYPE_9__ {int amount; int kind; } ;
struct TYPE_8__ {int value; } ;
struct TYPE_10__ {scalar_t__ qualifier; TYPE_3__ shifter; TYPE_2__ imm; int type; } ;
struct TYPE_7__ {scalar_t__ op; } ;


 int AARCH64_MOD_NONE ;
 int AARCH64_OPND_IMM_MOV ;
 scalar_t__ AARCH64_OPND_QLF_W ;
 scalar_t__ OP_MOVN ;
 scalar_t__ aarch64_wide_constant_p (int ,int,int *) ;

__attribute__((used)) static int
convert_movewide_to_mov (aarch64_inst *inst)
{
  uint64_t value = inst->operands[1].imm.value;

  if (value == 0 && inst->operands[1].shifter.amount != 0)
    return 0;
  inst->operands[1].type = AARCH64_OPND_IMM_MOV;
  inst->operands[1].shifter.kind = AARCH64_MOD_NONE;
  value <<= inst->operands[1].shifter.amount;


  if (inst->opcode->op == OP_MOVN)
    {
      int is32 = inst->operands[0].qualifier == AARCH64_OPND_QLF_W;
      value = ~value;

      if (aarch64_wide_constant_p (value, is32, ((void*)0)))
 return 0;
    }
  inst->operands[1].imm.value = value;
  inst->operands[1].shifter.amount = 0;
  return 1;
}
