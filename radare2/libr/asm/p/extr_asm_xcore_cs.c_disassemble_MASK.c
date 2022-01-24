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
typedef  int /*<<< orphan*/  csh ;
struct TYPE_10__ {int size; scalar_t__* op_str; int /*<<< orphan*/  mnemonic; } ;
typedef  TYPE_1__ cs_insn ;
struct TYPE_12__ {int /*<<< orphan*/  pc; scalar_t__ big_endian; } ;
struct TYPE_11__ {int size; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_XCORE ; 
 int CS_MODE_BIG_ENDIAN ; 
 int CS_MODE_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC8(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	csh handle;
	cs_insn* insn;
	int mode, n, ret = -1;
	mode = a->big_endian? CS_MODE_BIG_ENDIAN: CS_MODE_LITTLE_ENDIAN;
	FUNC5 (op, 0, sizeof (RAsmOp));
	op->size = 4;
	ret = FUNC3 (CS_ARCH_XCORE, mode, &handle);
	if (ret) {
		goto fin;
	}
	FUNC4 (handle, CS_OPT_DETAIL, CS_OPT_OFF);
	n = FUNC1 (handle, (ut8*)buf, len, a->pc, 1, &insn);
	if (n < 1) {
		FUNC6 (op, "invalid");
		op->size = 4;
		ret = -1;
		goto beach;
	}
	ret = 4;
	if (insn->size < 1) {
		goto beach;
	}
	op->size = insn->size;
	FUNC6 (op, FUNC7 ("%s%s%s",
		insn->mnemonic, insn->op_str[0]? " ": "",
		insn->op_str));
	// TODO: remove the '$'<registername> in the string
	beach:
	FUNC2 (insn, n);
	FUNC0 (&handle);
	fin:
	return ret;
}