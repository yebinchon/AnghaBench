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
typedef  int /*<<< orphan*/  ut32 ;
struct winedbg_arm_insn {int /*<<< orphan*/  str_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut32 FUNC3(struct winedbg_arm_insn *arminsn, ut32 inst) {
	arminsn->str_asm = FUNC2 (arminsn->str_asm, "b%s %s", FUNC0 (inst), tbl_regs[FUNC1 (inst, 0)]);
	return 0;
}