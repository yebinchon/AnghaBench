#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int st32 ;
typedef  int /*<<< orphan*/  csh ;
struct TYPE_11__ {TYPE_1__* detail; } ;
typedef  TYPE_4__ cs_insn ;
struct TYPE_10__ {int type; int value; } ;
struct TYPE_9__ {int base; int index; int scale; int disp; } ;
struct TYPE_12__ {int type; int reg; int fp; int vector_index; scalar_t__ subtracted; TYPE_3__ shift; int /*<<< orphan*/  setend; int /*<<< orphan*/  imm; TYPE_2__ mem; } ;
typedef  TYPE_5__ cs_arm_op ;
struct TYPE_13__ {int op_count; int vector_size; scalar_t__ vector_data; int cps_mode; int cps_flag; scalar_t__ cc; int mem_barrier; scalar_t__ writeback; scalar_t__ update_flags; scalar_t__ usermode; TYPE_5__* operands; } ;
typedef  TYPE_6__ cs_arm ;
struct TYPE_8__ {TYPE_6__ arm; } ;
typedef  int /*<<< orphan*/  RStrBuf ;

/* Variables and functions */
 scalar_t__ ARM_CC_AL ; 
 scalar_t__ ARM_CC_INVALID ; 
 int ARM_CPSFLAG_INVALID ; 
 int ARM_CPSMODE_INVALID ; 
 int ARM_MB_INVALID ; 
#define  ARM_OP_CIMM 147 
#define  ARM_OP_FP 146 
#define  ARM_OP_IMM 145 
#define  ARM_OP_MEM 144 
#define  ARM_OP_PIMM 143 
#define  ARM_OP_REG 142 
#define  ARM_OP_SETEND 141 
#define  ARM_OP_SYSREG 140 
 int ARM_REG_INVALID ; 
#define  ARM_SETEND_BE 139 
#define  ARM_SETEND_LE 138 
#define  ARM_SFT_ASR 137 
#define  ARM_SFT_ASR_REG 136 
 int ARM_SFT_INVALID ; 
#define  ARM_SFT_LSL 135 
#define  ARM_SFT_LSL_REG 134 
#define  ARM_SFT_LSR 133 
#define  ARM_SFT_LSR_REG 132 
#define  ARM_SFT_ROR 131 
#define  ARM_SFT_ROR_REG 130 
#define  ARM_SFT_RRX 129 
#define  ARM_SFT_RRX_REG 128 
 scalar_t__ ARM_VECTORDATA_INVALID ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(RStrBuf *buf, csh handle, cs_insn *insn) {
	int i;
	FUNC4 (buf);
	FUNC2 (buf, "{");
	cs_arm *x = &insn->detail->arm;
	FUNC2 (buf, "\"operands\":[");
	for (i = 0; i < x->op_count; i++) {
		cs_arm_op *op = &x->operands[i];
		if (i > 0) {
			FUNC2 (buf, ",");
		}
		FUNC2 (buf, "{");
		switch (op->type) {
		case ARM_OP_REG:
			FUNC2 (buf, "\"type\":\"reg\"");
			FUNC3 (buf, ",\"value\":\"%s\"", FUNC1 (handle, op->reg));
			break;
		case ARM_OP_IMM:
			FUNC2 (buf, "\"type\":\"imm\"");
			FUNC3 (buf, ",\"value\":%d", (st32)op->imm);
			break;
		case ARM_OP_MEM:
			FUNC2 (buf, "\"type\":\"mem\"");
			if (op->mem.base != ARM_REG_INVALID) {
				FUNC3 (buf, ",\"base\":\"%s\"", FUNC1 (handle, op->mem.base));
			}
			if (op->mem.index != ARM_REG_INVALID) {
				FUNC3 (buf, ",\"index\":\"%s\"", FUNC1 (handle, op->mem.index));
			}
			FUNC3 (buf, ",\"scale\":%d", op->mem.scale);
			FUNC3 (buf, ",\"disp\":%d", op->mem.disp);
			break;
		case ARM_OP_FP:
			FUNC2 (buf, "\"type\":\"fp\"");
			FUNC3 (buf, ",\"value\":%lf", op->fp);
			break;
		case ARM_OP_CIMM:
			FUNC2 (buf, "\"type\":\"cimm\"");
			FUNC3 (buf, ",\"value\":%d", (st32)op->imm);
			break;
		case ARM_OP_PIMM:
			FUNC2 (buf, "\"type\":\"pimm\"");
			FUNC3 (buf, ",\"value\":%d", (st32)op->imm);
			break;
		case ARM_OP_SETEND:
			FUNC2 (buf, "\"type\":\"setend\"");
			switch (op->setend) {
			case ARM_SETEND_BE:
				FUNC2 (buf, ",\"value\":\"be\"");
				break;
			case ARM_SETEND_LE:
				FUNC2 (buf, ",\"value\":\"le\"");
				break;
			default:
				FUNC2 (buf, ",\"value\":\"invalid\"");
				break;
			}
			break;
		case ARM_OP_SYSREG:
			FUNC2 (buf, "\"type\":\"sysreg\"");
			FUNC3 (buf, ",\"value\":\"%s\"", FUNC1 (handle, op->reg));
			break;
		default:
			FUNC2 (buf, ",\"type\":\"invalid\"");
			break;
		}
		if (op->shift.type != ARM_SFT_INVALID) {
			FUNC2 (buf, ",\"shift\":{");
			switch (op->shift.type) {
			case ARM_SFT_ASR:
			case ARM_SFT_LSL:
			case ARM_SFT_LSR:
			case ARM_SFT_ROR:
			case ARM_SFT_RRX:
				FUNC3 (buf, "\"type\":\"%s\"", FUNC5 (op->shift.type));
				FUNC3 (buf, ",\"value\":\"%u\"", op->shift.value);
				break;
			case ARM_SFT_ASR_REG:
			case ARM_SFT_LSL_REG:
			case ARM_SFT_LSR_REG:
			case ARM_SFT_ROR_REG:
			case ARM_SFT_RRX_REG:
				FUNC3 (buf, "\"type\":\"%s\"", FUNC5 (op->shift.type));
				FUNC3 (buf, ",\"value\":\"%d\"", FUNC1 (handle, op->shift.value));
				break;
			default:
				break;
			}
			FUNC2 (buf, "}");
		}
		if (op->vector_index != -1) {
			FUNC3 (buf, ",\"vector_index\":\"%d\"", op->vector_index);
		}
		if (op->subtracted) {
			FUNC2 (buf, ",\"subtracted\":true");
		}
		FUNC2 (buf, "}");
	}
	FUNC2 (buf, "]");
	if (x->usermode) {
		FUNC2 (buf, ",\"usermode\":true");
	}
	if (x->update_flags) {
		FUNC2 (buf, ",\"update_flags\":true");
	}
	if (x->writeback) {
		FUNC2 (buf, ",\"writeback\":true");
	}
	if (x->vector_size) {
		FUNC3 (buf, ",\"vector_size\":%d", x->vector_size);
	}
	if (x->vector_data != ARM_VECTORDATA_INVALID) {
		FUNC3 (buf, ",\"vector_data\":\"%s\"", FUNC6 (x->vector_data));
	}
	if (x->cps_mode != ARM_CPSMODE_INVALID) {
		FUNC3 (buf, ",\"cps_mode\":%d", x->cps_mode);
	}
	if (x->cps_flag != ARM_CPSFLAG_INVALID) {
		FUNC3 (buf, ",\"cps_flag\":%d", x->cps_flag);
	}
	if (x->cc != ARM_CC_INVALID && x->cc != ARM_CC_AL) {
		FUNC3 (buf, ",\"cc\":\"%s\"", FUNC0 (x->cc));
	}
	if (x->mem_barrier != ARM_MB_INVALID) {
		FUNC3 (buf, ",\"mem_barrier\":%d", x->mem_barrier - 1);
	}
	FUNC2 (buf, "}");
}