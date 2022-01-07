
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct winedbg_arm_insn {int str_asm; } ;


 int get_cond (int) ;
 size_t get_nibble (int,int) ;
 int r_str_appendf (int ,char*,int ,char*,int ,int ,int ) ;
 int * tbl_regs ;

__attribute__((used)) static ut32 arm_disasm_swp(struct winedbg_arm_insn *arminsn, ut32 inst) {
 short byte = (inst >> 22) & 0x01;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "swp%s%s %s, %s, [%s]", get_cond (inst), byte ? "b" : "",
   tbl_regs[get_nibble (inst, 3)], tbl_regs[get_nibble (inst, 0)],
   tbl_regs[get_nibble (inst, 4)]);
 return 0;
}
