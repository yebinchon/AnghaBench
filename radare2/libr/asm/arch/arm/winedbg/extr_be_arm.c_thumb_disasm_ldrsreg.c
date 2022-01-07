
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,int ,int ,int ,int ) ;
 int * tbl_regs ;
 int * tbl_sregops_t ;

__attribute__((used)) static ut16 thumb_disasm_ldrsreg(struct winedbg_arm_insn *arminsn, ut16 inst) {
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s %s, [%s, %s]",
   tbl_sregops_t[(inst >> 10) & 0x03], tbl_regs[inst & 0x07],
   tbl_regs[(inst >> 3) & 0x07], tbl_regs[(inst >> 6) & 0x07]);
 return 0;
}
