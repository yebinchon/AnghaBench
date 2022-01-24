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
typedef  int cs_mode ;
struct TYPE_10__ {int size; scalar_t__* op_str; int /*<<< orphan*/  mnemonic; } ;
typedef  TYPE_1__ cs_insn ;
struct TYPE_12__ {int immdisp; int bits; scalar_t__ syntax; scalar_t__* features; int /*<<< orphan*/  pc; scalar_t__* cpu; scalar_t__ big_endian; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_ARM ; 
 int /*<<< orphan*/  CS_ARCH_ARM64 ; 
 int CS_MODE_ARM ; 
 int CS_MODE_BIG_ENDIAN ; 
 int CS_MODE_LITTLE_ENDIAN ; 
 int CS_MODE_MCLASS ; 
 int CS_MODE_THUMB ; 
 int CS_MODE_V8 ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 int /*<<< orphan*/  CS_OPT_ON ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_DEFAULT ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_NOREGNAME ; 
 scalar_t__ R_ASM_SYNTAX_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ cd ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC11 (scalar_t__*,char*) ; 

__attribute__((used)) static int FUNC12(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	static int omode = -1;
	static int obits = 32;
	bool disp_hash = a->immdisp;
	cs_insn* insn = NULL;
	cs_mode mode = 0;
	int ret, n = 0;
	mode |= (a->bits == 16)? CS_MODE_THUMB: CS_MODE_ARM;
	mode |= (a->big_endian)? CS_MODE_BIG_ENDIAN: CS_MODE_LITTLE_ENDIAN;
	if (mode != omode || a->bits != obits) {
		FUNC2 (&cd);
		cd = 0; // unnecessary
		omode = mode;
		obits = a->bits;
	}

	if (a->cpu) {
		if (FUNC11 (a->cpu, "cortex")) {
			mode |= CS_MODE_MCLASS;
		}
		if (a->bits != 64) {
			if (FUNC11 (a->cpu, "v8")) {
				mode |= CS_MODE_V8;
			}
		}
	}
	if (a->features && a->bits != 64) {
		if (FUNC11 (a->features, "v8")) {
			mode |= CS_MODE_V8;
		}
	}
	if (op) {
		op->size = 4;
		FUNC9 (&op->buf_asm, "");
	}
	if (!cd || mode != omode) {
		ret = (a->bits == 64)?
			FUNC5 (CS_ARCH_ARM64, mode, &cd):
			FUNC5 (CS_ARCH_ARM, mode, &cd);
		if (ret) {
			ret = -1;
			goto beach;
		}
	}
	FUNC6 (cd, CS_OPT_SYNTAX, (a->syntax == R_ASM_SYNTAX_REGNUM)
			? CS_OPT_SYNTAX_NOREGNAME
			: CS_OPT_SYNTAX_DEFAULT);
	FUNC6 (cd, CS_OPT_DETAIL, (a->features && *a->features)
		? CS_OPT_ON: CS_OPT_OFF);
	if (!buf) {
		goto beach;
	}
	n = FUNC3 (cd, buf, FUNC0 (4, len), a->pc, 1, &insn);
	if (n < 1 || insn->size < 1) {
		ret = -1;
		goto beach;
	}
	if (op) {
		op->size = 0;
	}
	if (a->features && *a->features) {
		if (!FUNC1 (a, insn) && op) {
			op->size = insn->size;
			FUNC9 (&op->buf_asm, "illegal");
		}
	}
	if (op && !op->size) {
		op->size = insn->size;
		char *buf_asm = FUNC10 ("%s%s%s",
			insn->mnemonic,
			insn->op_str[0]?" ":"",
			insn->op_str);
		if (!disp_hash) {
			FUNC7 (buf_asm, '#');
		}
		FUNC9 (&op->buf_asm, buf_asm);
	}
	FUNC4 (insn, n);
	beach:
	FUNC2 (&cd);
	if (op) {
		if (!*FUNC8 (&op->buf_asm)) {
			FUNC9 (&op->buf_asm, "invalid");
		}
		return op->size;
	}
	return ret;
}