
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,char*,char*,int ,int ,int ) ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_ldrreg(struct winedbg_arm_insn *arminsn, ut16 inst) {
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s%s %s, [%s, %s]",
   (inst & 0x0800)?"ldr":"str", (inst & 0x0400)?"b":"",
   tbl_regs[inst & 0x07], tbl_regs[(inst >> 3) & 0x07],
   tbl_regs[(inst >> 6) & 0x07]);
 return 0;
}
