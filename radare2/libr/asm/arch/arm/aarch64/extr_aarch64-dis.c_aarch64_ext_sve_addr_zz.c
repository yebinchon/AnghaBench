
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum aarch64_modifier_kind { ____Placeholder_aarch64_modifier_kind } aarch64_modifier_kind ;
typedef void* bfd_boolean ;
struct TYPE_10__ {int kind; scalar_t__ amount; int operator_present; int amount_present; } ;
struct TYPE_8__ {void* is_reg; void* regno; } ;
struct TYPE_9__ {void* preind; int writeback; TYPE_1__ offset; void* base_regno; } ;
struct TYPE_11__ {TYPE_3__ shifter; TYPE_2__ addr; } ;
typedef TYPE_4__ aarch64_opnd_info ;
struct TYPE_12__ {int * fields; } ;
typedef TYPE_5__ aarch64_operand ;
typedef int aarch64_insn ;


 int AARCH64_MOD_LSL ;
 int FALSE ;
 int FLD_SVE_msz ;
 void* TRUE ;
 void* extract_field (int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
aarch64_ext_sve_addr_zz (const aarch64_operand *self, aarch64_opnd_info *info,
    aarch64_insn code, enum aarch64_modifier_kind kind)
{
  info->addr.base_regno = extract_field (self->fields[0], code, 0);
  info->addr.offset.regno = extract_field (self->fields[1], code, 0);
  info->addr.offset.is_reg = TRUE;
  info->addr.writeback = FALSE;
  info->addr.preind = TRUE;
  info->shifter.kind = kind;
  info->shifter.amount = extract_field (FLD_SVE_msz, code, 0);
  info->shifter.operator_present = (kind != AARCH64_MOD_LSL
        || info->shifter.amount != 0);
  info->shifter.amount_present = (info->shifter.amount != 0);
  return TRUE;
}
