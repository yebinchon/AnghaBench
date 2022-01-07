
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int imm; } ;
struct TYPE_8__ {TYPE_2__ offset; scalar_t__ preind; scalar_t__ writeback; } ;
struct TYPE_6__ {scalar_t__ kind; scalar_t__ operator_present; } ;
struct TYPE_9__ {TYPE_3__ addr; TYPE_1__ shifter; } ;
typedef TYPE_4__ aarch64_opnd_info ;


 scalar_t__ AARCH64_MOD_MUL_VL ;
 int assert (int) ;
 int snprintf (char*,size_t,char*,char const*,...) ;

__attribute__((used)) static void
print_immediate_offset_address (char *buf, size_t size,
    const aarch64_opnd_info *opnd,
    const char *base)
{
  if (opnd->addr.writeback)
    {
      if (opnd->addr.preind)
 snprintf (buf, size, "[%s, #%d]!", base, opnd->addr.offset.imm);
      else
 snprintf (buf, size, "[%s], #%d", base, opnd->addr.offset.imm);
    }
  else
    {
      if (opnd->shifter.operator_present)
 {
   assert (opnd->shifter.kind == AARCH64_MOD_MUL_VL);
   snprintf (buf, size, "[%s, #%d, mul vl]",
      base, opnd->addr.offset.imm);
 }
      else if (opnd->addr.offset.imm)
 snprintf (buf, size, "[%s, #%d]", base, opnd->addr.offset.imm);
      else
 snprintf (buf, size, "[%s]", base);
    }
}
