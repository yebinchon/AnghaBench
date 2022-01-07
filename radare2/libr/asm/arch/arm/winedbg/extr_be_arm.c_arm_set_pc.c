
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct winedbg_arm_insn {int pc; } ;



void arm_set_pc(struct winedbg_arm_insn *arminsn, ut64 pc) {
 arminsn->pc = pc;
}
