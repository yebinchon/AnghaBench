
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {TYPE_1__ imm; } ;
typedef TYPE_2__ aarch64_opnd_info ;
typedef int aarch64_operand_error ;
typedef int aarch64_operand ;
typedef int aarch64_inst ;
typedef int aarch64_insn ;


 int FALSE ;
 int TRUE ;
 int aarch64_ext_limm (int const*,TYPE_2__*,int const,int const*,int *) ;

bfd_boolean
aarch64_ext_inv_limm (const aarch64_operand *self,
        aarch64_opnd_info *info, const aarch64_insn code,
        const aarch64_inst *inst,
        aarch64_operand_error *errors)
{
  if (!aarch64_ext_limm (self, info, code, inst, errors))
    return FALSE;
  info->imm.value = ~info->imm.value;
  return TRUE;
}
