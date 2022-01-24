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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ut32 FUNC2(struct winedbg_arm_insn *arminsn, ut32 inst) {
	ut32 comment = inst & 0x00ffffff;
	arminsn->str_asm = FUNC1 (arminsn->str_asm, "swi%s #%d", FUNC0 (inst), comment);
	return 0;
}