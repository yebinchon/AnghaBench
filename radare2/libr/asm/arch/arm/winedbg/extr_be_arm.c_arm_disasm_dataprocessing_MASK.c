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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int,int) ; 
 void* FUNC3 (void*,char*,...) ; 
 int /*<<< orphan*/ * tbl_dataops ; 
 int* tbl_regs ; 
 int /*<<< orphan*/ * tbl_shifts ; 

__attribute__((used)) static ut32 FUNC4(struct winedbg_arm_insn *arminsn, ut32 inst) {
	short condcodes = (inst >> 20) & 0x01;
	short opcode    = (inst >> 21) & 0x0f;
	short immediate = (inst >> 25) & 0x01;
	short no_op1    = (opcode & 0x0d) == 0x0d;
	short no_dst    = (opcode & 0x0c) == 0x08;

	arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s%s%s", tbl_dataops[opcode], condcodes ? "s" : "", FUNC1 (inst));
	if (!no_dst) {
		arminsn->str_asm = FUNC3 (arminsn->str_asm, " %s, ", tbl_regs[FUNC2 (inst, 3)]);
	}
	else {
		arminsn->str_asm = FUNC3 (arminsn->str_asm, " ");	
	}
	if (no_op1) {
		if (immediate) {
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "#%u", FUNC0 (inst & 0xff, 2 * FUNC2 (inst, 2)));
		}
		else {
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s", tbl_regs[FUNC2 (inst, 0)]);
		}
	} else {
		if (immediate) {
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s, #%u", tbl_regs[FUNC2 (inst, 4)],
					FUNC0 (inst & 0xff, 2 * FUNC2 (inst, 2)));
		}
		else if (((inst >> 4) & 0xff) == 0x00) { /* no shift */
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s, %s", tbl_regs[FUNC2 (inst, 4)],
					tbl_regs[FUNC2 (inst, 0)]);
		}
		else if (((inst >> 4) & 0x09) == 0x01) { /* register shift */
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s, %s, %s %s", tbl_regs[FUNC2 (inst, 4)],
					tbl_regs[FUNC2 (inst, 0)],
					tbl_shifts[(inst >> 5) & 0x03], tbl_regs[(inst >> 8) & 0x0f]);
		}
		else if (((inst >> 4) & 0x01) == 0x00) { /* immediate shift */
			arminsn->str_asm = FUNC3 (arminsn->str_asm, "%s, %s, %s #%d", tbl_regs[FUNC2 (inst, 4)],
					tbl_regs[FUNC2 (inst, 0)], tbl_shifts[(inst >> 5) & 0x03],
					(inst >> 7) & 0x1f);
		}
		else {
			return inst;
		}
	}
	return 0;
}