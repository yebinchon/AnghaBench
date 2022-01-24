#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int size; } ;
typedef  TYPE_1__ vle_t ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ vle_handle ;
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  buf_asm ;
struct TYPE_16__ {int /*<<< orphan*/  pc; } ;
struct TYPE_15__ {int size; } ;
typedef  TYPE_3__ RAsmOp ;
typedef  TYPE_4__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	vle_t* instr = 0;
	vle_handle handle = {0};
	if (len < 2) {
		return -1;
	}
	if (!FUNC2 (&handle, buf, len) && (instr = FUNC3 (&handle))) {
		op->size = instr->size;
		char buf_asm[64];
		FUNC4 (buf_asm, sizeof (buf_asm), a->pc, instr);
		FUNC0 (op, buf_asm);
		FUNC1 (instr);
	} else {
		FUNC0 (op, "invalid");
		op->size = 2;
		return -1;
	}
	return op->size;
}