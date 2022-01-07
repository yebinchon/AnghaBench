
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winedbg_arm_insn {int thumb; } ;



void arm_set_thumb(struct winedbg_arm_insn *arminsn, int thumb) {
 arminsn->thumb = thumb;
}
