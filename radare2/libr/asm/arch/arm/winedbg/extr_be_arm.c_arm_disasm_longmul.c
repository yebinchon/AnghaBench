
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct winedbg_arm_insn {int str_asm; } ;


 int get_cond (int) ;
 size_t get_nibble (int,int) ;
 int r_str_appendf (int ,char*,char*,char*,int ,char*,int ,int ,int ,int ) ;
 int * tbl_regs ;

__attribute__((used)) static ut32 arm_disasm_longmul(struct winedbg_arm_insn *arminsn, ut32 inst) {
 short sign = (inst >> 22) & 0x01;
 short accu = (inst >> 21) & 0x01;
 short condcodes = (inst >> 20) & 0x01;

 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "%s%s%s%s %s, %s, %s, %s", sign ? "s" : "u", accu ? "mlal" : "mull",
   get_cond (inst), condcodes ? "s" : "",
   tbl_regs[get_nibble (inst, 3)], tbl_regs[get_nibble (inst, 4)],
   tbl_regs[get_nibble (inst, 0)], tbl_regs[get_nibble (inst, 2)]);
 return 0;
}
