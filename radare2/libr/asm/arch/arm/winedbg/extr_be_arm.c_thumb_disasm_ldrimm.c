
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,char*,char*,int ,int ,int) ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_ldrimm(struct winedbg_arm_insn *arminsn, ut16 inst) {
 ut16 offset = (inst & 0x07c0) >> 6;
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s%s %s, [%s, #%u]",
   (inst & 0x0800)?"ldr":"str", (inst & 0x1000)?"b":"",
   tbl_regs[inst & 0x07], tbl_regs[(inst >> 3) & 0x07],
   (inst & 0x1000)?offset:(offset << 2));
 return 0;
}
