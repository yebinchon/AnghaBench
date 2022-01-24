#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const ut8 ;
struct winedbg_arm_insn {int dummy; } ;
struct TYPE_7__ {int bits; scalar_t__ big_endian; int /*<<< orphan*/  pc; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_asm; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int FUNC0 (struct winedbg_arm_insn*) ; 
 int /*<<< orphan*/  FUNC1 (struct winedbg_arm_insn*) ; 
 struct winedbg_arm_insn* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct winedbg_arm_insn*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct winedbg_arm_insn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct winedbg_arm_insn*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC9 (struct winedbg_arm_insn*) ; 
 int /*<<< orphan*/  FUNC10 (struct winedbg_arm_insn*) ; 

__attribute__((used)) static int FUNC11(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	ut8 buf2[4];
	struct winedbg_arm_insn *arminsn = FUNC2();
	FUNC4 (arminsn, a->pc);
	FUNC5 (arminsn, a->bits == 16);
	if (a->big_endian && a->bits == 32) {
		FUNC7 (buf2, buf, 4);
		FUNC3 (arminsn, buf2);
	} else {
		FUNC3 (arminsn, buf);
	}
	op->size = FUNC0 (arminsn);
	const char *asmstr = FUNC9 (arminsn);
	if (asmstr) {
		FUNC8 (&op->buf_asm, asmstr);
		FUNC6(op, FUNC10 (arminsn));
	} else {
		FUNC8 (&op->buf_asm, "invalid");
		FUNC8 (&op->buf, "");
	}
	FUNC1 (arminsn);
	return op->size;
}