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
struct TYPE_12__ {int /*<<< orphan*/  pc; scalar_t__ big_endian; scalar_t__* cpu; } ;
struct TYPE_11__ {int size; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_SPARC ; 
 int CS_MODE_BIG_ENDIAN ; 
 int CS_MODE_V9 ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 scalar_t__ cd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*) ; 

__attribute__((used)) static int FUNC10(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	cs_insn* insn;
	int n = -1, ret = -1;
	int mode = CS_MODE_BIG_ENDIAN;
	if (a->cpu && *a->cpu) {
		if (!FUNC9 (a->cpu, "v9")) {
			mode |= CS_MODE_V9;
		}
	}
	if (op) {
		FUNC5 (op, 0, sizeof (RAsmOp));
		op->size = 4;
	}
	if (cd != 0) {
		FUNC0 (&cd);
	}
	ret = FUNC3 (CS_ARCH_SPARC, mode, &cd);
	if (ret) {
		goto fin;
	}
	FUNC4 (cd, CS_OPT_DETAIL, CS_OPT_OFF);
	if (!op) {
		return 0;
	}
	if (a->big_endian) {
		n = FUNC1 (cd, buf, len, a->pc, 1, &insn);
	}
	if (n < 1) {
		FUNC6 (op, "invalid");
		op->size = 4;
		ret = -1;
		goto beach;
	} else {
		ret = 4;
	}
	if (insn->size < 1) {
		goto beach;
	}
	op->size = insn->size;
	char *buf_asm = FUNC8 ("%s%s%s",
		insn->mnemonic, insn->op_str[0]? " ": "",
		insn->op_str);
	FUNC7 (buf_asm, '%', 0);
	FUNC6 (op, buf_asm);
	// TODO: remove the '$'<registername> in the string
	FUNC2 (insn, n);
	beach:
	// cs_close (&cd);
	fin:
	return ret;
}