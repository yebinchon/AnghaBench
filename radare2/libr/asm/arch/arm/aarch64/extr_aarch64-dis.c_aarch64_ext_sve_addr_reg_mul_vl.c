
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
typedef int bfd_boolean ;
struct TYPE_11__ {int amount; int operator_present; void* amount_present; int kind; } ;
struct TYPE_9__ {int imm; void* is_reg; } ;
struct TYPE_10__ {TYPE_1__ offset; int preind; void* writeback; int base_regno; } ;
struct TYPE_12__ {TYPE_3__ shifter; TYPE_2__ addr; } ;
typedef TYPE_4__ aarch64_opnd_info ;
struct TYPE_13__ {int * fields; } ;
typedef TYPE_5__ aarch64_operand ;
typedef int aarch64_insn ;


 int AARCH64_MOD_MUL_VL ;
 void* FALSE ;
 int TRUE ;
 int extract_field (int ,int ,int ) ;
 int get_operand_specific_data (TYPE_5__ const*) ;

__attribute__((used)) static bfd_boolean
aarch64_ext_sve_addr_reg_mul_vl (const aarch64_operand *self,
     aarch64_opnd_info *info, aarch64_insn code,
     int64_t offset)
{
  info->addr.base_regno = extract_field (self->fields[0], code, 0);
  info->addr.offset.imm = offset * (1 + get_operand_specific_data (self));
  info->addr.offset.is_reg = FALSE;
  info->addr.writeback = FALSE;
  info->addr.preind = TRUE;
  if (offset != 0)
    info->shifter.kind = AARCH64_MOD_MUL_VL;
  info->shifter.amount = 1;
  info->shifter.operator_present = (info->addr.offset.imm != 0);
  info->shifter.amount_present = FALSE;
  return TRUE;
}
