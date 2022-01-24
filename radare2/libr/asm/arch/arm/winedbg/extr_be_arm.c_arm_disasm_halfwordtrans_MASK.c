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
 void* FUNC2 (void*,char*,...) ; 
 short* tbl_regs ; 

__attribute__((used)) static ut32 FUNC3(struct winedbg_arm_insn *arminsn, ut32 inst) {
	short halfword  = (inst >> 5)  & 0x01;
	short sign      = (inst >> 6)  & 0x01;
	short load      = (inst >> 20) & 0x01;
	short writeback = (inst >> 21) & 0x01;
	short immediate = (inst >> 22) & 0x01;
	short direction = (inst >> 23) & 0x01;
	short indexing  = (inst >> 24) & 0x01;
	short offset    = ((inst >> 4) & 0xf0) + (inst & 0x0f);

	if (!direction){
		offset *= -1;
	}

	arminsn->str_asm = FUNC2 (arminsn->str_asm, "%s%s%s%s%s", load ? "ldr" : "str", sign ? "s" : "",
			halfword ? "h" : (sign ? "b" : ""), writeback ? "t" : "", FUNC0 (inst));
	arminsn->str_asm = FUNC2 (arminsn->str_asm, " %s, ", tbl_regs[FUNC1 (inst, 3)]);
	if (indexing) {
		if (immediate) {
			arminsn->str_asm = FUNC2 (arminsn->str_asm, "[%s, #%d]", tbl_regs[FUNC1 (inst, 4)], offset);
		}
		else {
			arminsn->str_asm = FUNC2 (arminsn->str_asm, "[%s, %s]", tbl_regs[FUNC1 (inst, 4)],
					tbl_regs[FUNC1 (inst, 0)]);
		}
	} else {
		if (immediate) {
			arminsn->str_asm = FUNC2 (arminsn->str_asm, "[%s], #%d", tbl_regs[FUNC1 (inst, 4)], offset);
		}
		else {
			arminsn->str_asm = FUNC2 (arminsn->str_asm, "[%s], %s", tbl_regs[FUNC1 (inst, 4)],
					tbl_regs[FUNC1 (inst, 0)]);
		}
	}
	return 0;
}