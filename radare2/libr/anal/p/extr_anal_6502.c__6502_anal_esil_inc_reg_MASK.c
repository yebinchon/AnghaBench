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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC2(RAnalOp *op, ut8 data0, char* sign) {
	char* reg = NULL;

	switch(data0) {
	case 0xe8: // inx
	case 0xca: // dex
		reg = "x";
		break;
	case 0xc8: // iny
	case 0x88: // dey
		reg = "y";
		break;
	}
	FUNC1 (&op->esil, "%s,%s%s=", reg, sign, sign);
	FUNC0 (op, _6502_FLAGS_NZ);
}