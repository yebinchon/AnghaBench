
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {void* str_asm; } ;


 void* r_str_appendf (void*,char*,...) ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_blocktrans(struct winedbg_arm_insn *arminsn, ut16 inst) {
 short load = (inst >> 11) & 0x01;
 short i;
 short last;

 for (i=7;i>=0;i--) {
  if ((inst>>i) & 1) {
   break;
  }
 }
 last = i;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s %s!, {", load ? "ldmia" : "stmia", tbl_regs[(inst >> 8) & 0x07]);

 for (i=0;i<=7;i++) {
  if ((inst>>i) & 1) {
   if (i == last) {
    arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s", tbl_regs[i]);
   }
   else {
    arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s, ", tbl_regs[i]);
   }
  }
 }

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "}");
 return 0;
}
