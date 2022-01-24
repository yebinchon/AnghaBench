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
typedef  int ut32 ;
struct winedbg_arm_insn {int /*<<< orphan*/  str_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut32 FUNC3(struct winedbg_arm_insn *arminsn, ut32 inst) {
	short byte = (inst >> 22) & 0x01;

	arminsn->str_asm = FUNC2 (arminsn->str_asm, "swp%s%s %s, %s, [%s]", FUNC0 (inst), byte ? "b" : "",
			tbl_regs[FUNC1 (inst, 3)], tbl_regs[FUNC1 (inst, 0)],
			tbl_regs[FUNC1 (inst, 4)]);
	return 0;
}