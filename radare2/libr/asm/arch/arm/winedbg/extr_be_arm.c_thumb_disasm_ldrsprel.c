
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,char*,int ,int) ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_ldrsprel(struct winedbg_arm_insn *arminsn, ut16 inst) {
 ut16 offset = (inst & 0xff) << 2;
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s %s, [sp, #%u]", (inst & 0x0800)?"ldr":"str",
   tbl_regs[(inst >> 8) & 0x07], offset);
 return 0;
}
