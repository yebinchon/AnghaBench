
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_10__ {int value; } ;
struct TYPE_11__ {TYPE_2__ imm; } ;
typedef TYPE_3__ aarch64_opnd_info ;
typedef int aarch64_operand_error ;
typedef int aarch64_operand ;
struct TYPE_12__ {TYPE_1__* operands; } ;
typedef TYPE_4__ aarch64_inst ;
typedef int aarch64_insn ;
struct TYPE_9__ {int qualifier; } ;


 scalar_t__ aarch64_ext_limm (int const*,TYPE_3__*,int const,TYPE_4__ const*,int *) ;
 int aarch64_get_qualifier_esize (int ) ;
 scalar_t__ aarch64_sve_dupm_mov_immediate_p (int ,int) ;

bfd_boolean
aarch64_ext_sve_limm_mov (const aarch64_operand *self,
     aarch64_opnd_info *info, const aarch64_insn code,
     const aarch64_inst *inst,
     aarch64_operand_error *errors)
{
  int esize = aarch64_get_qualifier_esize (inst->operands[0].qualifier);
  return (aarch64_ext_limm (self, info, code, inst, errors)
   && aarch64_sve_dupm_mov_immediate_p (info->imm.value, esize));
}
