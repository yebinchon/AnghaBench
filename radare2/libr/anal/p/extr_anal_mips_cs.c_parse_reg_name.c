
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_5__ {int base; } ;
struct TYPE_7__ {int type; TYPE_1__ mem; int reg; } ;
struct TYPE_6__ {char* name; } ;
typedef TYPE_2__ RRegItem ;




 int MIPS_REG_INVALID ;
 TYPE_4__ OPERAND (int) ;
 scalar_t__ cs_reg_name (int ,int ) ;

__attribute__((used)) static int parse_reg_name(RRegItem *reg, csh handle, cs_insn *insn, int reg_num) {
 if (!reg) {
  return -1;
 }
 switch (OPERAND (reg_num).type) {
 case 128:
  reg->name = (char *)cs_reg_name (handle, OPERAND (reg_num).reg);
  break;
 case 129:
  if (OPERAND (reg_num).mem.base != MIPS_REG_INVALID) {
   reg->name = (char *)cs_reg_name (handle, OPERAND (reg_num).mem.base);
  }
 default:
  break;
 }
 return 0;
}
