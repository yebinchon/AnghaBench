
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
struct TYPE_10__ {TYPE_2__* operands; TYPE_1__* opcode; int value; } ;
typedef TYPE_3__ aarch64_inst ;
typedef scalar_t__ aarch64_insn ;
struct TYPE_11__ {int member_1; int member_0; } ;
typedef TYPE_4__ aarch64_field ;
struct TYPE_9__ {int qualifier; } ;
struct TYPE_8__ {int op; } ;


 int AARCH64_OPND_QLF_V_2D ;
 int AARCH64_OPND_QLF_V_4S ;
 int FLD_size ;




 int assert (int ) ;
 scalar_t__ extract_field_2 (TYPE_4__*,int ,int ) ;
 int gen_sub_field (int ,int ,int,TYPE_4__*) ;

__attribute__((used)) static int
decode_asimd_fcvt (aarch64_inst *inst)
{
  aarch64_field field = {0, 0};
  aarch64_insn value;
  enum aarch64_opnd_qualifier qualifier;

  gen_sub_field (FLD_size, 0, 1, &field);
  value = extract_field_2 (&field, inst->value, 0);
  qualifier = value == 0 ? AARCH64_OPND_QLF_V_4S
    : AARCH64_OPND_QLF_V_2D;
  switch (inst->opcode->op)
    {
    case 129:
    case 128:

      inst->operands[1].qualifier = qualifier;
      break;
    case 131:
    case 130:

      inst->operands[0].qualifier = qualifier;
      break;
    default:
      assert (0);
      return 0;
    }

  return 1;
}
