#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut16 ;
struct TYPE_3__ {int eob; int delay; int size; int /*<<< orphan*/  esil; void* dst; void** src; void* type; int /*<<< orphan*/  jump; scalar_t__ addr; scalar_t__ fail; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 void* R_ANAL_OP_TYPE_CJMP ; 
 void* R_ANAL_OP_TYPE_CMP ; 
 void* R_ANAL_OP_TYPE_LOAD ; 
 void* R_ANAL_OP_TYPE_STORE ; 
 int /*<<< orphan*/  WORD_SIZE ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int,...) ; 

__attribute__((used)) static int FUNC16(RAnal* anal, RAnalOp* op, ut16 code) {
	if (FUNC6 (code)) {
		op->type = R_ANAL_OP_TYPE_CJMP; //Jump if true or jump if false insns
		op->jump = FUNC14 (op->addr, FUNC0 (code));
		op->fail = op->addr + 2 ;
		op->eob = true;
		if (FUNC4 (code)) {
			FUNC15 (&op->esil, "sr,1,&,?{,0x%x,pc,=,}", op->jump);
		} else if (FUNC5 (code)) {
			FUNC15 (&op->esil, "1,SETD,sr,1,&,?{,0x%x,pc,=,}", op->jump);
			op->delay = 1; //Only /S versions have a delay slot
		} else if (FUNC3 (code)) {
			FUNC15 (&op->esil, "1,SETD,sr,1,&,!,?{,0x%x,pc,=,}",op->jump);
			op->delay = 1; //Only /S versions have a delay slot
		} else if (FUNC2 (code)) {
			FUNC15 (&op->esil, "sr,1,&,!,?{,0x%x,pc,=,}", op->jump);
		}
	} else if (FUNC9 (code)) {
		// 10000100mmmmi4*1 mov.b @(<disp>,<REG_M>),R0
		op->type = R_ANAL_OP_TYPE_LOAD;
		op->dst = FUNC12 (anal, 0);
		op->src[0] = FUNC13 (anal, FUNC1 (code), code & 0x0F, BYTE_SIZE);
		FUNC15 (&op->esil, "r%d,0x%x,+,[1],DUP,0x80,&,?{,0xFFFFFF00,|,},r0,=", FUNC1 (code), code & 0xF);
	} else if (FUNC11 (code)) {
		// 10000101mmmmi4*2 mov.w @(<disp>,<REG_M>),R0
		op->type = R_ANAL_OP_TYPE_LOAD;
		op->dst = FUNC12 (anal, 0);
		op->src[0] = FUNC13 (anal, FUNC1 (code), code & 0x0F, WORD_SIZE);
		FUNC15 (&op->esil, "r%d,0x%x,+,[2],DUP,0x8000,&,?{,0xFFFF0000,|,},r0,=", FUNC1 (code), (code & 0xF) * 2);
	} else if (FUNC7 (code)) {
		op->type = R_ANAL_OP_TYPE_CMP;
		FUNC15 (&op->esil, "0xFFFFFFFE,sr,&=,0x%x,DUP,0x80,&,?{,0xFFFFFF00,|,},r0,==,$z,sr,|,sr,:=", code & 0xFF);
	} else if (FUNC8 (code)) {
		/* 10000000mmmmi4*1 mov.b R0,@(<disp>,<REG_M>)*/
		op->type = R_ANAL_OP_TYPE_STORE;
		op->src[0] = FUNC12 (anal, 0);
		op->dst = FUNC13 (anal, FUNC1 (code), code & 0x0F, BYTE_SIZE);
		FUNC15 (&op->esil, "r0,0xFF,&,0x%x,r%d,+,=[1]", code & 0xF, FUNC1 (code));
	} else if (FUNC10 (code)) {
		// 10000001mmmmi4*2 mov.w R0,@(<disp>,<REG_M>))
		op->type = R_ANAL_OP_TYPE_STORE;
		op->src[0] = FUNC12 (anal, 0);
		op->dst = FUNC13 (anal, FUNC1 (code), code & 0x0F, WORD_SIZE);
		FUNC15 (&op->esil, "r0,0xFFFF,&,0x%x,r%d,+,=[2]", (code & 0xF) * 2, FUNC1 (code));
	}
	return op->size;
}