#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_11__ {int /*<<< orphan*/  big_endian; } ;
struct TYPE_10__ {int size; int jump; int fail; int ptr; int val; void* type; int /*<<< orphan*/  addr; int /*<<< orphan*/  family; } ;
typedef  int /*<<< orphan*/  RAnalOpMask ;
typedef  TYPE_1__ RAnalOp ;
typedef  TYPE_2__ RAnal ;

/* Variables and functions */
#define  OP2_BPcc 159 
#define  OP2_BPr 158 
#define  OP2_Bicc 157 
#define  OP2_FBPfcc 156 
#define  OP2_FBfcc 155 
#define  OP2_ILLTRAP 154 
#define  OP2_INV 153 
#define  OP32_CONDINV1 152 
#define  OP32_CONDINV2 151 
#define  OP32_CONDINV3 150 
#define  OP32_INV1 149 
#define  OP32_INV2 148 
#define  OP32_INV3 147 
#define  OP32_INV4 146 
#define  OP32_INV5 145 
#define  OP32_JMPL 144 
#define  OP33_INV1 143 
#define  OP33_INV10 142 
#define  OP33_INV11 141 
#define  OP33_INV12 140 
#define  OP33_INV13 139 
#define  OP33_INV14 138 
#define  OP33_INV15 137 
#define  OP33_INV16 136 
#define  OP33_INV2 135 
#define  OP33_INV3 134 
#define  OP33_INV4 133 
#define  OP33_INV5 132 
#define  OP33_INV6 131 
#define  OP33_INV7 130 
#define  OP33_INV8 129 
#define  OP33_INV9 128 
 scalar_t__ OP_0 ; 
 scalar_t__ OP_1 ; 
 scalar_t__ OP_2 ; 
 scalar_t__ OP_3 ; 
 int /*<<< orphan*/  R_ANAL_OP_FAMILY_CPU ; 
 void* R_ANAL_OP_TYPE_ILL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *data, int len, RAnalOpMask mask) {
	int sz = 4;
	ut32 insn;

	FUNC9 (op, 0, sizeof (RAnalOp));
	op->family = R_ANAL_OP_FAMILY_CPU;
	op->addr = addr;
	op->size = sz;
	op->jump = op->fail = -1;
	op->ptr = op->val = -1;

	if(!anal->big_endian) {
		((char*)&insn)[0] = data[3];
		((char*)&insn)[1] = data[2];
		((char*)&insn)[2] = data[1];
		((char*)&insn)[3] = data[0];
	} else {
		FUNC8(&insn, data, sz);
	}

	if (FUNC0(insn) == OP_0) {
		switch(FUNC1(insn)) {
		case OP2_ILLTRAP:
		case OP2_INV:
			op->type = R_ANAL_OP_TYPE_ILL;
			sz = 0; /* make r_core_anal_bb stop */
			break;
		case OP2_BPcc:
		case OP2_Bicc:
		case OP2_BPr:
		case OP2_FBPfcc:
		case OP2_FBfcc:
			FUNC5(op, insn, addr);
			break;
		}
	} else if(FUNC0(insn) == OP_1) {
		FUNC6(op, insn, addr);
	} else if(FUNC0(insn) == OP_2) {
		switch(FUNC2(insn))
		 {
		case OP32_INV1:
		case OP32_INV2:
		case OP32_INV3:
		case OP32_INV4:
		case OP32_INV5:
			op->type = R_ANAL_OP_TYPE_ILL;
			sz = 0; /* make r_core_anal_bb stop */
			break;
		case OP32_CONDINV1:
			if(FUNC3(insn) == 1) {
				op->type = R_ANAL_OP_TYPE_ILL;
				sz = 0; /* make r_core_anal_bb stop */
			}
			break;
		case OP32_CONDINV2:
			if(FUNC4(insn) == 1) {
				op->type = R_ANAL_OP_TYPE_ILL;
				sz = 0; /* make r_core_anal_bb stop */
			}
			break;
		case OP32_CONDINV3:
			if(FUNC4(insn) != 0) {
				op->type = R_ANAL_OP_TYPE_ILL;
				sz = 0; /* make r_core_anal_bb stop */
			}
			break;

		case OP32_JMPL:
			FUNC7(anal, op, insn, addr);
			break;
		 }
	} else if (FUNC0(insn) == OP_3) {
		switch(FUNC2(insn)) {
		case OP33_INV1:
		case OP33_INV2:
		case OP33_INV3:
		case OP33_INV4:
		case OP33_INV5:
		case OP33_INV6:
		case OP33_INV7:
		case OP33_INV8:
		case OP33_INV9:
		case OP33_INV10:
		case OP33_INV11:
		case OP33_INV12:
		case OP33_INV13:
		case OP33_INV14:
		case OP33_INV15:
		case OP33_INV16:
			op->type = R_ANAL_OP_TYPE_ILL;
			sz = 0; /* make r_core_anal_bb stop */
			break;
		 }
	}

	return sz;
}