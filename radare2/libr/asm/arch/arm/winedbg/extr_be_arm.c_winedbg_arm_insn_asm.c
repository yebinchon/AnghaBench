
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winedbg_arm_insn {char* str_asm; } ;



char* winedbg_arm_insn_asm(struct winedbg_arm_insn *arminsn) {
 return arminsn->str_asm;
}
