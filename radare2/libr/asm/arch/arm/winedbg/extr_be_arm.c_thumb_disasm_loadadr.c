
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,int ,char*,int) ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_loadadr(struct winedbg_arm_insn *arminsn, ut16 inst) {
 ut16 src = (inst >> 11) & 0x01;
 ut16 offset = (inst & 0xff) << 2;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "add %s, %s, #%d", tbl_regs[(inst >> 8) & 0x07], src ? "sp" : "pc",
   offset);
 return 0;
}
