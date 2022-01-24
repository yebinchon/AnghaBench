#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_9__ {scalar_t__ size; scalar_t__* op_str; int /*<<< orphan*/  mnemonic; } ;
typedef  TYPE_1__ cs_insn ;
struct TYPE_11__ {int /*<<< orphan*/  pc; } ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_SYSZ ; 
 int CS_MODE_BIG_ENDIAN ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 scalar_t__ cd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	static int omode = 0;
	int mode, n, ret;
	ut64 off = a->pc;
	cs_insn* insn = NULL;
	mode = CS_MODE_BIG_ENDIAN;
	if (cd && mode != omode) {
		FUNC0 (&cd);
		cd = 0;
	}
	op->size = 0;
	omode = mode;
	if (cd == 0) {
		ret = FUNC3 (CS_ARCH_SYSZ, mode, &cd);
		if (ret) {
			return 0;
		}
		FUNC4 (cd, CS_OPT_DETAIL, CS_OPT_OFF);
	}
	n = FUNC1 (cd, (const ut8*)buf, len, off, 1, &insn);
	if (n>0) {
		if (insn->size>0) {
			op->size = insn->size;
			char *buf_asm = FUNC7 ("%s%s%s",
					insn->mnemonic, insn->op_str[0]?" ": "",
					insn->op_str);
			char *ptrstr = FUNC9 (buf_asm, "ptr ");
			if (ptrstr) {
				FUNC5 (ptrstr, ptrstr + 4, FUNC8 (ptrstr + 4) + 1);
			}
			FUNC6 (op, buf_asm);
		}
		FUNC2 (insn, n);
	}
	return op->size;
}