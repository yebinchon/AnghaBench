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
typedef  int ut16 ;
struct winedbg_arm_insn {void* str_asm; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 void* FUNC1 (void*,char*,char*,char*,size_t,int,int /*<<< orphan*/ ,size_t,size_t,...) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut32 FUNC2(struct winedbg_arm_insn *arminsn, ut32 inst) {
	ut16 opc1 = (inst >> 21) & 0x07;
	ut16 opc2 = (inst >> 5) & 0x07;

	if (opc2) {
		arminsn->str_asm = FUNC1 (arminsn->str_asm,
				"%s%s\tp%u, #%u, %s, cr%u, cr%u, #%u", (inst & 0x00100000)?"mrc":"mcr",
				(inst & 0x10000000)?"2":"", FUNC0 (inst, 2), opc1,
				tbl_regs[FUNC0 (inst, 3)], FUNC0 (inst, 4), FUNC0 (inst, 0), opc2);
	}
	else {
		arminsn->str_asm = FUNC1 (arminsn->str_asm,
				"%s%s\tp%u, #%u, %s, cr%u, cr%u", (inst & 0x00100000)?"mrc":"mcr",
				(inst & 0x10000000)?"2":"", FUNC0 (inst, 2), opc1,
				tbl_regs[FUNC0 (inst, 3)], FUNC0 (inst, 4), FUNC0 (inst, 0));
	}
	return 0;
}