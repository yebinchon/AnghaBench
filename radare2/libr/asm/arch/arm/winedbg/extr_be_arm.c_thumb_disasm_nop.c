
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*) ;

__attribute__((used)) static ut16 thumb_disasm_nop(struct winedbg_arm_insn *arminsn, ut16 inst) {
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "nop");
 return 0;
}
