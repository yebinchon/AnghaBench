#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_6__ {char* mnemonic; TYPE_1__* operands; } ;
struct TYPE_5__ {int type; int* scale; int* regs; int reg; int offset; int offset_sign; } ;
typedef  int /*<<< orphan*/  RAsm ;
typedef  TYPE_2__ Opcode ;

/* Variables and functions */
 int OT_CONSTANT ; 
 int OT_MEMORY ; 
 int OT_REGALL ; 
 int ST8_MAX ; 
 int ST8_MIN ; 
 int X86R_EBP ; 
 int X86R_UNDEFINED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(RAsm *a, ut8 *data, const Opcode *op) {
	FUNC1 (op);
	int l = 0;
	int mod_byte = 0;
	int offset = 0;

	if (op->operands[0].type & OT_MEMORY ||
	    op->operands[1].type & OT_CONSTANT) {
		return -1;
	}

	data[l++] = 0x0f;
	char *cmov = op->mnemonic + 4;
	if (!FUNC2 (cmov, "o")) {
		data[l++] = 0x40;
	} else if (!FUNC2 (cmov, "no")) {
		data [l++] = 0x41;
	} else if (!FUNC2 (cmov, "b") ||
	           !FUNC2 (cmov, "c") ||
	           !FUNC2 (cmov, "nae")) {
		data [l++] = 0x42;
	} else if (!FUNC2 (cmov, "ae") ||
	           !FUNC2 (cmov, "nb") ||
		   !FUNC2 (cmov, "nc")) {
		data [l++] = 0x43;
	} else if (!FUNC2 (cmov, "e") ||
                   !FUNC2 (cmov, "z")) {
		data [l++] = 0x44;
	} else if (!FUNC2 (cmov, "ne") ||
	           !FUNC2 (cmov, "nz")) {
		data [l++] = 0x45;
        } else if (!FUNC2 (cmov, "be") ||
	           !FUNC2 (cmov, "na")) {
		data [l++] = 0x46;
        } else if (!FUNC2 (cmov, "a") ||
	           !FUNC2 (cmov, "nbe")) {
		data [l++] = 0x47;
	} else if (!FUNC2 (cmov, "s")) {
		data [l++] = 0x48;
        } else if (!FUNC2 (cmov, "ns")) {
		data [l++] = 0x49;
        } else if (!FUNC2 (cmov, "p") ||
	           !FUNC2 (cmov, "pe")) {
		data [l++] = 0x4a;
        } else if (!FUNC2 (cmov, "np") ||
	           !FUNC2 (cmov, "po")) {
		data [l++] = 0x4b;
        } else if (!FUNC2 (cmov, "l") ||
	           !FUNC2 (cmov, "nge")) {
		data [l++] = 0x4c;
        } else if (!FUNC2 (cmov, "ge") ||
	           !FUNC2 (cmov, "nl")) {
		data [l++] = 0x4d;
        } else if (!FUNC2 (cmov, "le") ||
	           !FUNC2 (cmov, "ng")) {
		data [l++] = 0x4e;
        } else if (!FUNC2 (cmov, "g") ||
	           !FUNC2 (cmov, "nle")) {
		data [l++] = 0x4f;
        }

	if (op->operands[0].type & OT_REGALL) {
		if (op->operands[1].type & OT_MEMORY) {
			if (op->operands[1].scale[0] > 1) {
				if (op->operands[1].regs[1] != X86R_UNDEFINED) {
					data[l++] = op->operands[0].reg << 3 | 4;
					data[l++] = FUNC0 (op->operands[1].scale[0]) << 6 |
                                                            op->operands[1].regs[0] << 3 |
                                                            op->operands[1].regs[1];
					return l;
				}
				offset = op->operands[1].offset * op->operands[1].offset_sign;

				if (op->operands[1].scale[0] == 2 && offset) {
					data[l++] = 0x40 | op->operands[0].reg << 3 | 4; // 4 = SIB
				} else {
					data[l++] = op->operands[0].reg << 3 | 4; // 4 = SIB
				}


				if (op->operands[1].scale[0] == 2) {
					data[l++] = op->operands[1].regs[0] << 3 | op->operands[1].regs[0];

				} else {
					data[l++] = FUNC0 (op->operands[1].scale[0]) << 6 |
                                                            op->operands[1].regs[0] << 3 | 5;
				}

				if (offset) {
					data[l++] = offset;
					if (offset < ST8_MIN || offset > ST8_MAX) {
						data[l++] = offset >> 8;
						data[l++] = offset >> 16;
						data[l++] = offset >> 24;
					}
				}
				return l;
			}
			if (op->operands[1].regs[1] != X86R_UNDEFINED) {
				data[l++] = op->operands[0].reg << 3 | 4;
				data[l++] = op->operands[1].regs[1] << 3 | op->operands[1].regs[0];
				return l;
			}

			offset = op->operands[1].offset * op->operands[1].offset_sign;
			if (op->operands[1].offset || op->operands[1].regs[0] == X86R_EBP) {
				mod_byte = 1;
			}
			if (offset < ST8_MIN || offset > ST8_MAX) {
				mod_byte = 2;
			}

			data[l++] = mod_byte << 6 | op->operands[0].reg << 3 | op->operands[1].regs[0];

			if (mod_byte) {
				data[l++] = offset;
				if (mod_byte == 2) {
					data[l++] = offset >> 8;
					data[l++] = offset >> 16;
					data[l++] = offset >> 24;
				}
			}
		} else {
			data[l++] = 0xc0 | op->operands[0].reg << 3 | op->operands[1].reg;
		}
	}

	return l;
}