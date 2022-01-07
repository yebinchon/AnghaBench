
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct winedbg_arm_insn {int const* buf; } ;



void arm_set_input_buffer(struct winedbg_arm_insn *arminsn, const ut8 *buf) {
 arminsn->buf = buf;
}
