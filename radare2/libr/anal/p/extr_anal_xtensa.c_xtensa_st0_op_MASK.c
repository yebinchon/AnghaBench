#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_OP_TYPE_CMOV ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_MOV ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_SWI ; 
 int /*<<< orphan*/  R_ANAL_OP_TYPE_TRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static void FUNC4 (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
	switch ((buf[1] >> 4) & 0xf) {
	case 0x0:
		FUNC1 (anal, op, addr, buf);
		break;
	case 0x1:
		op->type = R_ANAL_OP_TYPE_CMOV;
		break;
	case 0x2:
		FUNC2 (anal, op, addr, buf);
		break;
	case 0x3:
		FUNC0 (anal, op, addr, buf);
		break;
	case 0x4:
		op->type = R_ANAL_OP_TYPE_TRAP;
		break;
	case 0x5: case 0x6: case 0x7:
		op->type = R_ANAL_OP_TYPE_SWI;
		break;
	case 0x8: case 0x9: case 0xa: case 0xb:
		op->type = R_ANAL_OP_TYPE_MOV;
		break;
	default:
		FUNC3 (anal, op, addr, buf);
		break;
	}
}