
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
struct cr16_cmd {int operands; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;
 scalar_t__ cr16_check_reg_boundaries (int) ;
 char** cr16_regs_names ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static inline int cr16_print_longregreg_reg(struct cr16_cmd *cmd,
  ut32 rel, ut8 src, ut8 dst, ut8 swap)
{
 if (cr16_check_reg_boundaries(src) || cr16_check_reg_boundaries(src + 1)
   || cr16_check_reg_boundaries(dst)) {
  return -1;
 }

 if (swap) {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
    "%s,0x%08x(%s,%s)", cr16_regs_names[src], rel,
    cr16_regs_names[dst + 1],
    cr16_regs_names[dst]);
 } else {
  snprintf(cmd->operands, CR16_INSTR_MAXLEN - 1,
   "0x%08x(%s,%s),%s", rel, cr16_regs_names[src + 1],
   cr16_regs_names[src], cr16_regs_names[dst]);

 }
 return 0;
}
