
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winedbg_arm_insn {struct winedbg_arm_insn* str_asm; struct winedbg_arm_insn* str_hex; } ;


 int free (struct winedbg_arm_insn*) ;

void* arm_free(struct winedbg_arm_insn *arminsn) {
 free(arminsn->str_hex);
 free(arminsn->str_asm);
 free(arminsn);
 return ((void*)0);
}
