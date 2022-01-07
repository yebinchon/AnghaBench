
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winedbg_arm_insn {char* str_hex; } ;



char* winedbg_arm_insn_hex(struct winedbg_arm_insn *arminsn) {
 return arminsn->str_hex;
}
