
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {int amount; int operator_present; int amount_present; int kind; } ;
struct TYPE_6__ {TYPE_1__ shifter; } ;
typedef TYPE_2__ aarch64_opnd_info ;
typedef int aarch64_operand_error ;
typedef int aarch64_operand ;
typedef int aarch64_inst ;
typedef int aarch64_insn ;


 int AARCH64_MOD_MUL ;
 int FALSE ;
 int FLD_SVE_imm4 ;
 int TRUE ;
 int aarch64_ext_imm (int const*,TYPE_2__*,int ,int const*,int *) ;
 int extract_field (int ,int ,int ) ;

bfd_boolean
aarch64_ext_sve_scale (const aarch64_operand *self,
         aarch64_opnd_info *info, aarch64_insn code,
         const aarch64_inst *inst, aarch64_operand_error *errors)
{
  int val;

  if (!aarch64_ext_imm (self, info, code, inst, errors))
    return FALSE;
  val = extract_field (FLD_SVE_imm4, code, 0);
  info->shifter.kind = AARCH64_MOD_MUL;
  info->shifter.amount = val + 1;
  info->shifter.operator_present = (val != 0);
  info->shifter.amount_present = (val != 0);
  return TRUE;
}
