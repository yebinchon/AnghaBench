#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_10__ {int size; scalar_t__* op_str; int /*<<< orphan*/  mnemonic; } ;
typedef  TYPE_1__ cs_insn ;
struct TYPE_12__ {int bits; scalar_t__ syntax; int /*<<< orphan*/  pc; scalar_t__* cpu; scalar_t__ big_endian; } ;
struct TYPE_11__ {int size; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_MIPS ; 
 int CS_MODE_BIG_ENDIAN ; 
 int CS_MODE_LITTLE_ENDIAN ; 
 int CS_MODE_MICRO ; 
 int CS_MODE_MIPS2 ; 
 int CS_MODE_MIPS3 ; 
 int CS_MODE_MIPS32 ; 
 int CS_MODE_MIPS32R6 ; 
 int CS_MODE_MIPS64 ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_DEFAULT ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_NOREGNAME ; 
 scalar_t__ R_ASM_SYNTAX_REGNUM ; 
 scalar_t__ cd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char*) ; 

__attribute__((used)) static int FUNC11(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	cs_insn* insn;
	int mode, n, ret = -1;
	mode = (a->big_endian)? CS_MODE_BIG_ENDIAN: CS_MODE_LITTLE_ENDIAN;
	if (!op) {
		return 0;
	}
	if (a->cpu && *a->cpu) {
		if (!FUNC10 (a->cpu, "micro")) {
			mode |= CS_MODE_MICRO;
		} else if (!FUNC10 (a->cpu, "r6")) {
			mode |= CS_MODE_MIPS32R6;
		} else if (!FUNC10 (a->cpu, "v3")) {
			mode |= CS_MODE_MIPS3;
		} else if (!FUNC10 (a->cpu, "v2")) {
#if CS_API_MAJOR > 3
			mode |= CS_MODE_MIPS2;
#endif
		}
	}
	mode |= (a->bits == 64)? CS_MODE_MIPS64 : CS_MODE_MIPS32;
	FUNC6 (op, 0, sizeof (RAsmOp));
	op->size = 4;
	if (cd != 0) {
		FUNC0 (&cd);
	}
	ret = FUNC3 (CS_ARCH_MIPS, mode, &cd);
	if (ret) {
		goto fin;
	}
	if (a->syntax == R_ASM_SYNTAX_REGNUM) {
		FUNC4 (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_NOREGNAME);
	} else {
		FUNC4 (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_DEFAULT);
	}
	FUNC4 (cd, CS_OPT_DETAIL, CS_OPT_OFF);
	n = FUNC1 (cd, (ut8*)buf, len, a->pc, 1, &insn);
	if (n < 1) {
		FUNC7 (op, "invalid");
		op->size = 4;
		goto beach;
	}
	if (insn->size < 1) {
		goto beach;
	}
	op->size = insn->size;
	char *str = FUNC8 ("%s%s%s", insn->mnemonic, insn->op_str[0]? " ": "", insn->op_str);
	if (str) {
		FUNC9 (str, '$', 0);
		// remove the '$'<registername> in the string
		FUNC7 (op, str);
		FUNC5 (str);
	}
	FUNC2 (insn, n);
beach:
	// cs_close (&cd);
fin:
	return op->size;
}