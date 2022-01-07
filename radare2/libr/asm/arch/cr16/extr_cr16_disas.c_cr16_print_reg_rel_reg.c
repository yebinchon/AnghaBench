
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

__attribute__((used)) static inline int cr16_print_reg_rel_reg(struct cr16_cmd *cmd,
    ut32 rel, ut8 srcreg, ut8 dstreg, ut8 swap)
{
 if (cr16_check_reg_boundaries(srcreg)) {
  return -1;
 }

 if (cr16_check_reg_boundaries(dstreg)) {
  return -1;
 }

 if (swap) {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "%s,0x%08x(%s)",
   cr16_regs_names[dstreg], rel, cr16_regs_names[srcreg]);
 } else {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1, "0x%08x(%s),%s",
   rel, cr16_regs_names[srcreg], cr16_regs_names[dstreg]);
 }

 return 0;
}
