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
struct winedbg_arm_insn {int /*<<< orphan*/  str_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut16 FUNC1(struct winedbg_arm_insn *arminsn, ut16 inst) {
	ut16 offset = (inst & 0xff) << 2;
	arminsn->str_asm = FUNC0 (arminsn->str_asm, "ldr %s, [pc, #%u]", tbl_regs[(inst >> 8) & 0x07], offset);
	return 0;
}