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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  mcore_t ;
struct TYPE_7__ {int /*<<< orphan*/  pc; } ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	mcore_t* instr = NULL;
	char tmp[256];
	if (!op || FUNC1 (&handle, buf, len)) {
		return -1;
	}
	op->size = 2;
	if ((instr = FUNC2 (&handle))) {
		FUNC3 (tmp, sizeof (tmp), a->pc, instr);
		FUNC0 (instr);
		FUNC4 (op, tmp);
	} else {
		FUNC4 (op, "invalid");
	}
	return op->size;
}