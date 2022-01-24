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
struct winedbg_arm_insn {int /*<<< orphan*/  str_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * tbl_regs ; 

__attribute__((used)) static ut32 FUNC3(struct winedbg_arm_insn *arminsn, ut32 inst) {
	ut16 CRm    = inst & 0x0f;
	ut16 CP     = (inst >> 5)  & 0x07;
	ut16 CPnum  = (inst >> 8)  & 0x0f;
	ut16 CRn    = (inst >> 16) & 0x0f;
	ut16 load   = (inst >> 20) & 0x01;
	ut16 CP_Opc = (inst >> 21) & 0x07;

	arminsn->str_asm = FUNC2 (arminsn->str_asm, "%s%s %u, %u, %s, cr%u, cr%u, {%u}", load ? "mrc" : "mcr",
			FUNC0 (inst), CPnum, CP, tbl_regs[FUNC1 (inst, 3)], CRn, CRm, CP_Opc);
	return 0;
}