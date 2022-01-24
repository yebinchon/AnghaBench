#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
typedef  int /*<<< orphan*/  cs_insn ;
struct TYPE_9__ {int /*<<< orphan*/  scale; int /*<<< orphan*/  index; } ;
struct TYPE_12__ {TYPE_2__ mem; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
struct TYPE_11__ {TYPE_1__ mem; } ;
struct TYPE_10__ {int type; int /*<<< orphan*/  scale; void* ireg; int /*<<< orphan*/ * src; int /*<<< orphan*/  dst; } ;
typedef  TYPE_3__ RAnalOp ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_7__ FUNC2 (int) ; 
 TYPE_6__ FUNC3 (int) ; 
#define  R_ANAL_OP_TYPE_ADD 137 
#define  R_ANAL_OP_TYPE_AND 136 
#define  R_ANAL_OP_TYPE_CMP 135 
#define  R_ANAL_OP_TYPE_LOAD 134 
 int R_ANAL_OP_TYPE_MASK ; 
#define  R_ANAL_OP_TYPE_MOV 133 
#define  R_ANAL_OP_TYPE_MUL 132 
#define  R_ANAL_OP_TYPE_OR 131 
#define  R_ANAL_OP_TYPE_STORE 130 
#define  R_ANAL_OP_TYPE_SUB 129 
#define  R_ANAL_OP_TYPE_XOR 128 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC8(RAnalOp *op , csh handle, cs_insn *insn, int bits) {
	FUNC4 (op);
	switch (op->type & R_ANAL_OP_TYPE_MASK) {
	case R_ANAL_OP_TYPE_LOAD:
	case R_ANAL_OP_TYPE_MOV:
	case R_ANAL_OP_TYPE_SUB:
	case R_ANAL_OP_TYPE_ADD:
	case R_ANAL_OP_TYPE_AND:
	case R_ANAL_OP_TYPE_XOR:
	case R_ANAL_OP_TYPE_MUL:
	case R_ANAL_OP_TYPE_CMP:
	case R_ANAL_OP_TYPE_OR:
		FUNC7 (op->src[2], &handle, insn, 3, bits);
		FUNC7 (op->src[1], &handle, insn, 2, bits);
		FUNC7 (op->src[0], &handle, insn, 1, bits);
		FUNC7 (op->dst, &handle, insn, 0, bits);
		break;
	case R_ANAL_OP_TYPE_STORE:
		FUNC7 (op->dst, &handle, insn, 1, bits);
		FUNC7 (op->src[0], &handle, insn, 0, bits);
		break;
	default:
		break;
	}
	if ((bits == 64) && FUNC1 (1)) {
		op->ireg = FUNC6 (FUNC5 (handle, FUNC3 (1).mem.index));
	} else if (FUNC0 (1)) {
		op->ireg = FUNC6 (FUNC5 (handle, FUNC2 (1).mem.index));
		op->scale = FUNC2 (1).mem.scale;
	}
}