
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {int str_asm; } ;


 int r_str_appendf (int ,char*,int ,int ,int ) ;
 int * tbl_aluops_t ;
 int * tbl_regs ;

__attribute__((used)) static ut16 thumb_disasm_aluop(struct winedbg_arm_insn *arminsn, ut16 inst) {
 short dst = inst & 0x07;
 short src = (inst >> 3) & 0x07;
 short op = (inst >> 6) & 0x0f;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s %s, %s", tbl_aluops_t[op], tbl_regs[dst], tbl_regs[src]);
 return 0;
}
