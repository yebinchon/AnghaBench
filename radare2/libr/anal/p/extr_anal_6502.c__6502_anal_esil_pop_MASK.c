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
typedef  int ut8 ;
struct TYPE_4__ {int /*<<< orphan*/  esil; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  _6502_FLAGS_NZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC2(RAnalOp *op, ut8 data0) {
	// case 0x28: // plp
	// case 0x68: // pla
	char *reg = (data0==0x28) ? "flags" : "a";
	// stack is on page one: sp + 0x100
	FUNC1 (&op->esil, "sp,++=,sp,0x100,+,[1],%s,=", reg);

	if (data0 == 0x68) {
		FUNC0 (op, _6502_FLAGS_NZ);
	}
}