
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_7__ {int index; int base; } ;
struct TYPE_8__ {int type; TYPE_1__ mem; int reg; } ;
typedef TYPE_2__ cs_arm_op ;
struct TYPE_9__ {char* name; } ;
typedef TYPE_3__ RRegItem ;




 TYPE_2__ INSOP (int) ;
 scalar_t__ cs_reg_name (int ,int ) ;
 int is_valid (int ) ;

__attribute__((used)) static int parse_reg_name(RRegItem *reg_base, RRegItem *reg_delta, csh handle, cs_insn *insn, int reg_num) {
 cs_arm_op armop = INSOP (reg_num);
 switch (armop.type) {
 case 128:
  reg_base->name = (char *)cs_reg_name (handle, armop.reg);
  break;
 case 129:
  if (is_valid (armop.mem.base) && is_valid (armop.mem.index)) {
   reg_base->name = (char *)cs_reg_name (handle, armop.mem.base);
   reg_delta->name = (char *)cs_reg_name (handle, armop.mem.index);
  } else if (is_valid (armop.mem.base)) {
   reg_base->name = (char *)cs_reg_name (handle, armop.mem.base);
  } else if (is_valid (armop.mem.index)) {
   reg_base->name = (char *)cs_reg_name (handle, armop.mem.index);
  }
  break;
 default:
  break;
 }
 return 0;
}
