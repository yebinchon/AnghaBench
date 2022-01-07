
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct winedbg_arm_insn {void* str_asm; } ;


 void* r_str_appendf (void*,char*,int) ;

__attribute__((used)) static ut16 thumb_disasm_addsprel(struct winedbg_arm_insn *arminsn, ut16 inst) {
 ut16 offset = (inst & 0x7f) << 2;
 if ((inst >> 7) & 0x01) {
  arminsn->str_asm = r_str_appendf (arminsn->str_asm, "sub sp, sp, #%u", offset);
 }
 else {
  arminsn->str_asm = r_str_appendf (arminsn->str_asm, "add sp, sp, #%u", offset);
 }
 return 0;
}
