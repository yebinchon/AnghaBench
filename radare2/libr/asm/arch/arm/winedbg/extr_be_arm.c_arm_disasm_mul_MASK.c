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
struct winedbg_arm_insn {void* str_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,int) ; 
 void* FUNC2 (void*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut32 FUNC3(struct winedbg_arm_insn *arminsn, ut32 inst) {
	short accu = (inst >> 21) & 0x01;
	short condcodes = (inst >> 20) & 0x01;

	if (accu) {
		arminsn->str_asm = FUNC2 (arminsn->str_asm, "mla%s%s %s, %s, %s, %s", FUNC0 (inst), condcodes ? "s" : "",
				tbl_regs[FUNC1 (inst, 4)], tbl_regs[FUNC1 (inst, 0)],
				tbl_regs[FUNC1 (inst, 2)], tbl_regs[FUNC1 (inst, 3)]);
	}
	else {
		arminsn->str_asm = FUNC2 (arminsn->str_asm, "mul%s%s %s, %s, %s", FUNC0 (inst), condcodes ? "s" : "",
				tbl_regs[FUNC1 (inst, 4)], tbl_regs[FUNC1 (inst, 0)],
				tbl_regs[FUNC1 (inst, 2)]);
	}
	return 0;
}