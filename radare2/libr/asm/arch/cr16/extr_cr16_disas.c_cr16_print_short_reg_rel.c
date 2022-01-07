
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut16 ;
struct cr16_cmd {int operands; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;
 scalar_t__ cr16_check_reg_boundaries (size_t) ;
 char** cr16_regs_names ;
 int snprintf (int ,scalar_t__,char*,size_t,...) ;

__attribute__((used)) static inline int cr16_print_short_reg_rel(struct cr16_cmd *cmd,
    ut8 sh, ut16 rel, ut8 reg)
{
 if (cr16_check_reg_boundaries(reg)) {
  return -1;
 }

 if (rel) {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
   "$0x%02x,0x%04x(%s)", sh, rel, cr16_regs_names[reg]);
 } else {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
   "$0x%02x,0(%s)", sh, cr16_regs_names[reg]);
 }

 return 0;
}
