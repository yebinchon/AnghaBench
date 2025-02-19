
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {void* str_asm; } ;


 void* r_str_appendf (void*,char*,...) ;
 int* tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_addsub(struct winedbg_arm_insn *arminsn, ut16 inst) {
 ut16 op = (inst >> 9) & 0x01;
 ut16 immediate = (inst >> 10) & 0x01;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s %s, %s, ", op ? "sub" : "add",
   tbl_regs[inst & 0x07], tbl_regs[(inst >> 3) & 0x07]);
 if (immediate) {
  arminsn->str_asm = r_str_appendf (arminsn->str_asm, "#%d", (inst >> 6) & 0x07);
 }
 else {
  arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s", tbl_regs[(inst >> 6) & 0x07]);
 }
 return 0;
}
