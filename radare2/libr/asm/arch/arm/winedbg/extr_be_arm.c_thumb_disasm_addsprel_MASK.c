#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ut16 ;
struct winedbg_arm_insn {void* str_asm; } ;

/* Variables and functions */
 void* FUNC0 (void*,char*,int) ; 

__attribute__((used)) static ut16 FUNC1(struct winedbg_arm_insn *arminsn, ut16 inst) {
	ut16 offset = (inst & 0x7f) << 2;
	if ((inst >> 7) & 0x01) {
		arminsn->str_asm = FUNC0 (arminsn->str_asm, "sub sp, sp, #%u", offset);
	}
	else {
		arminsn->str_asm = FUNC0 (arminsn->str_asm, "add sp, sp, #%u", offset);
	}
	return 0;
}