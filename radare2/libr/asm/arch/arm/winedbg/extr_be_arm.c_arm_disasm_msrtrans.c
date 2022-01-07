
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct winedbg_arm_insn {void* str_asm; } ;


 int ROR32 (int,int) ;
 int get_cond (int) ;
 int get_nibble (int,int) ;
 void* r_str_appendf (void*,char*,int ,char*,int ) ;
 int * tbl_regs ;

__attribute__((used)) static ut32 arm_disasm_msrtrans(struct winedbg_arm_insn *arminsn, ut32 inst) {
 short immediate = (inst >> 25) & 0x01;
 short dst = (inst >> 22) & 0x01;
 short simple = (inst >> 16) & 0x01;

 if (simple || !immediate) {
  arminsn->str_asm = r_str_appendf (arminsn->str_asm, "msr%s %s, %s", get_cond (inst), dst ? "spsr" : "cpsr",
    tbl_regs[get_nibble (inst, 0)]);
  return 0;
 }
 arminsn->str_asm = r_str_appendf (arminsn->str_asm, "msr%s %s, #%u", get_cond (inst), dst ? "spsr" : "cpsr",
   ROR32 (inst & 0xff, 2 * get_nibble (inst, 2)));
 return 0;
}
