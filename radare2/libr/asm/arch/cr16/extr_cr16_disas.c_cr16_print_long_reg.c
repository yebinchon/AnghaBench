
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut32 ;
struct cr16_cmd {int operands; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;
 scalar_t__ cr16_check_reg_boundaries (size_t) ;
 char** cr16_regs_names ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static inline int cr16_print_long_reg(struct cr16_cmd *cmd, ut32 l, ut8 reg, ut8 swap)
{
 if (cr16_check_reg_boundaries(reg)) {
  return -1;
 }

 if (swap) {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
    "%s,0x%08x", cr16_regs_names[reg], l);
 } else {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
    "0x%08x,%s", l, cr16_regs_names[reg]);
 }

 return 0;
}
