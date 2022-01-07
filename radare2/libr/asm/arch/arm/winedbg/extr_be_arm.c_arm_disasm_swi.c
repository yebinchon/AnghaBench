
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct winedbg_arm_insn {int str_asm; } ;


 int get_cond (int) ;
 int r_str_appendf (int ,char*,int ,int) ;

__attribute__((used)) static ut32 arm_disasm_swi(struct winedbg_arm_insn *arminsn, ut32 inst) {
 ut32 comment = inst & 0x00ffffff;
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "swi%s #%d", get_cond (inst), comment);
 return 0;
}
