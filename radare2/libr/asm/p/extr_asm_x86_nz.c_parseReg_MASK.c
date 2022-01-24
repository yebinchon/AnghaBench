#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
struct TYPE_4__ {int bits; } ;
typedef  int Register ;
typedef  TYPE_1__ RAsm ;

/* Variables and functions */
 int OT_BYTE ; 
 int OT_CONTROLREG ; 
 int OT_DEBUGREG ; 
 int OT_DWORD ; 
 int OT_FPUREG ; 
 int OT_GPREG ; 
 int OT_MMXREG ; 
 int OT_QWORD ; 
 int FUNC0 (int) ; 
 int OT_REGALL ; 
 int OT_REGTYPE ; 
 int OT_SEGMENTREG ; 
 int OT_WORD ; 
 int OT_XMMREG ; 
 scalar_t__ TT_NUMBER ; 
 scalar_t__ TT_SPECIAL ; 
 int X86R_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,size_t*,size_t*) ; 
 int FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static Register FUNC5(RAsm *a, const char *str, size_t *pos, ut32 *type) {
	int i;
	// Must be the same order as in enum register_t
	const char *regs[] = { "eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi", "eip", NULL };
	const char *regsext[] = { "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d", NULL };
	const char *regs8[] = { "al", "cl", "dl", "bl", "ah", "ch", "dh", "bh", NULL };
	const char *regs16[] = { "ax", "cx", "dx", "bx", "sp", "bp", "si", "di", NULL };
	const char *regs64[] = { "rax", "rcx", "rdx", "rbx", "rsp", "rbp", "rsi", "rdi", "rip", NULL };
	const char *regs64ext[] = { "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", NULL };
	const char *sregs[] = { "es", "cs", "ss", "ds", "fs", "gs", NULL };
	const char *cregs[] = { "cr0", "cr1", "cr2","cr3", "cr4", "cr5", "cr6", "cr7", NULL };
	const char *dregs[] = { "dr0", "dr1", "dr2","dr3", "dr4", "dr5", "dr6", "dr7", NULL };

	// Get token (especially the length)
	size_t nextpos, length;
	const char *token;
	FUNC2 (str, pos, &nextpos);
	token = str + *pos;
	length = nextpos - *pos;
	*pos = nextpos;

	// General purpose registers
	if (length == 3 && token[0] == 'e') {
		for (i = 0; regs[i]; i++) {
			if (!FUNC4 (regs[i], token, length)) {
				*type = (OT_GPREG & FUNC0 (i)) | OT_DWORD;
				return i;
			}
		}
	}
	// Control registers
	if (length == 3 && token[0] == 'c') {
		for (i = 0; cregs[i]; i++) {
			if (!FUNC4 (cregs[i], token, length)) {
				*type = (OT_CONTROLREG & FUNC0 (i)) | OT_DWORD;
				return i;
			}
		}
	}
	// Debug registers
	if (length == 3 && token[0] == 'd') {
		for (i = 0; cregs[i]; i++) {
			if (!FUNC4 (dregs[i], token, length)) {
				*type = (OT_DEBUGREG & FUNC0 (i)) | OT_DWORD;
				return i;
			}
		}
	}
	if (length == 2) {
		if (token[1] == 'l' || token[1] == 'h') {
			for (i = 0; regs8[i]; i++) {
				if (!FUNC4 (regs8[i], token, length)) {
					*type = (OT_GPREG & FUNC0 (i)) | OT_BYTE;
					return i;
				}
			}
		}
		for (i = 0; regs16[i]; i++) {
			if (!FUNC4 (regs16[i], token, length)) {
				*type = (OT_GPREG & FUNC0 (i)) | OT_WORD;
				return i;
			}
		}
		// This isn't working properly yet
		for (i = 0; sregs[i]; i++) {
			if (!FUNC4 (sregs[i], token, length)) {
				*type = (OT_SEGMENTREG & FUNC0 (i)) | OT_WORD;
				return i;
			}
		}
	}
	if (token[0] == 'r') {
		for (i = 0; regs64[i]; i++) {
			if (!FUNC4 (regs64[i], token, length)) {
				*type = (OT_GPREG & FUNC0 (i)) | OT_QWORD;
				a->bits = 64;
				return i;
			}
		}
		for (i = 0; regs64ext[i]; i++) {
			if (!FUNC4 (regs64ext[i], token, length)) {
				*type = (OT_GPREG & FUNC0 (i)) | OT_QWORD;
				a->bits = 64;
				return i + 9;
			}
		}
		for (i = 0; regsext[i]; i++) {
			if (!FUNC4 (regsext[i], token, length)) {
				*type = (OT_GPREG & FUNC0 (i)) | OT_DWORD;
				if (a->bits < 32) {
					a->bits = 32;
				}
				return i + 9;
			}
		}
	}
	// Extended registers
	if (!FUNC4 ("st", token, 2)) {
		*type = (OT_FPUREG & ~OT_REGALL);
		*pos = 2;
	}
	if (!FUNC4 ("mm", token, 2)) {
		*type = (OT_MMXREG & ~OT_REGALL);
		*pos = 2;
	}
	if (!FUNC4 ("xmm", token, 3)) {
		*type = (OT_XMMREG & ~OT_REGALL);
		*pos = 3;
	}
	// Now read number, possibly with parentheses
	if (*type & (OT_FPUREG | OT_MMXREG | OT_XMMREG) & ~OT_REGALL) {
		Register reg = X86R_UNDEFINED;
		// pass by '(',if there is one
		if (FUNC2 (token, pos, &nextpos) == TT_SPECIAL && token[*pos] == '(') {
			*pos = nextpos;
		}
		// read number
		// const int maxreg = (a->bits == 64) ? 15 : 7;
		if (FUNC2 (token, pos, &nextpos) != TT_NUMBER) {
			FUNC1 ("Expected register number '%s'\n", str + *pos);
			return X86R_UNDEFINED;
		}
		reg = FUNC3 (a, token + *pos);
		// st and mm go up to 7, xmm up to 15
		if ((reg > 15) || ((*type & (OT_FPUREG | OT_MMXREG ) & ~OT_REGALL) && reg > 7))   {
			FUNC1 ("Too large register index!\n");
			return X86R_UNDEFINED;
		}
		*pos = nextpos;

		// pass by ')'
		if (FUNC2 (token, pos, &nextpos) == TT_SPECIAL && token[*pos] == ')') {
			*pos = nextpos;
		}
		*type |= (FUNC0 (reg) & ~OT_REGTYPE);
		return reg;
	}
	return X86R_UNDEFINED;
}