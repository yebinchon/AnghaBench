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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC2(RAnalOp *op, ut8 data0) {
	const char* src="unk";
	const char* dst="unk";
	switch(data0) {
	case 0xaa: // tax
		src="a";
		dst="x";
		break;
	case 0x8a: // txa
		src="x";
		dst="a";
		break;
	case 0xa8: // tay
		src="a";
		dst="y";
		break;
	case 0x98: // tya
		src="y";
		dst="a";
		break;
	case 0x9a: // txs
		src="x";
		dst="sp";
		break;
	case 0xba: // tsx
		src="sp";
		dst="x";
		break;
	default:
		// FIXME: should not happen
		break;
	}
	FUNC1 (&op->esil, "%s,%s,=",src,dst);

	// don't update NZ on txs
	if (data0 != 0x9a) {
		FUNC0 (op, _6502_FLAGS_NZ);
	}
}