#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut16 ;
struct cr16_cmd {int dummy; } ;

/* Variables and functions */
#define  CR16_ADD 163 
#define  CR16_ADDC 162 
#define  CR16_ADDU 161 
#define  CR16_AND 160 
#define  CR16_ASHU 159 
#define  CR16_BAL 158 
#define  CR16_BCOND01 157 
#define  CR16_BITI 156 
#define  CR16_CMP 155 
#define  CR16_I_R 154 
#define  CR16_JAL 153 
#define  CR16_JUMP 152 
#define  CR16_LOADM 151 
#define  CR16_LPR 150 
#define  CR16_LSH 149 
#define  CR16_MOV 148 
#define  CR16_MOVD 147 
#define  CR16_MOVXB 146 
#define  CR16_MOVZB 145 
#define  CR16_MUL 144 
#define  CR16_MULSB 143 
#define  CR16_MULSW 142 
#define  CR16_MULUW 141 
#define  CR16_OR 140 
#define  CR16_POP 139 
#define  CR16_POPRET_1 138 
#define  CR16_POPRET_2 137 
#define  CR16_PUSH 136 
#define  CR16_R_R 135 
#define  CR16_SPR 134 
#define  CR16_STORM 133 
#define  CR16_SUB 132 
#define  CR16_SUBC 131 
#define  CR16_TBIT_I_R 130 
#define  CR16_TBIT_R_R 129 
#define  CR16_XOR 128 
 int FUNC0 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC6 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC7 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC9 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC11 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC12 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC13 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC14 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC15 (int /*<<< orphan*/  const*,struct cr16_cmd*) ; 
 int FUNC16 (int) ; 
 int const FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/  const*) ; 

int FUNC19(const ut8 *instr, struct cr16_cmd *cmd)
{
	int ret;
	ut16 in;
	in = FUNC18 (instr);

	switch (FUNC17(in)) {
	case CR16_MOV:
	case CR16_ADD:
	case CR16_ADDU:
	case CR16_ADDC:
	case CR16_MUL:
	case CR16_SUB:
	case CR16_SUBC:
	case CR16_CMP:
	case CR16_AND:
	case CR16_OR:
	case CR16_XOR:
	case CR16_ASHU:
	case CR16_LSH:
		switch(FUNC16(in)) {
		case CR16_I_R:
			ret = FUNC4(instr, cmd);
			break;
		case CR16_R_R:
			ret = FUNC13(instr, cmd);
			break;
		default:
			ret = -1;
		}
		if (ret == -1 && FUNC17(in) == CR16_CMP) {
			ret = FUNC14(instr, cmd);
		}
		break;
	case CR16_BCOND01:
		ret = FUNC1(instr, cmd);
		break;
	case CR16_BITI:
		ret = FUNC3(instr, cmd);
		break;
	default:
		ret = -1;
	}

	if (ret != -1) {
		return ret;
	}

	switch ((in >> 13)) {
	case 0x2:
	case 0x0:
		ret = FUNC2(instr, cmd);
		break;
	}

	if (ret != -1) {
		return ret;
	}

	switch (in >> 9) {
	case CR16_LPR:
	case CR16_SPR:
		ret = FUNC15(instr, cmd);
		break;
	case CR16_TBIT_R_R:
		ret = FUNC13(instr, cmd);
		if (ret == -1) {
			ret = FUNC0 (instr, cmd);
		}
		break;
	case CR16_TBIT_I_R:
		ret = FUNC4(instr, cmd);
		break;
	case CR16_BAL:
		ret = FUNC0(instr, cmd);
		break;
	case CR16_JUMP:
	case CR16_JAL:
	case 0x0B:
		ret = FUNC5(instr, cmd);
		if (ret == -1) {
			ret = FUNC2 (instr, cmd);
		}
		break;
	case CR16_MOVXB:
	case CR16_MOVZB:
		ret = FUNC10(instr, cmd);
		break;
	case CR16_MULSB:
	case CR16_MULSW:
	case CR16_MULUW:
		ret = FUNC11(instr, cmd);
		break;
	}

	if (ret != -1) {
		return ret;
	}

	switch (in >> 7) {
	case CR16_PUSH:
	case CR16_POP:
	case CR16_POPRET_1:
	case CR16_POPRET_2:
		ret = FUNC12(instr, cmd);
		break;
	case CR16_LOADM:
	case CR16_STORM:
		ret = FUNC7(instr, cmd);
		break;
	}

	if (ret != -1) {
		return ret;
	}

	switch (in >> 10) {
	case CR16_MOVD:
		ret = FUNC9(instr, cmd);
		break;
	}

	if (ret != -1) {
		return ret;
	}

	ret = FUNC8(instr, cmd);

	if (ret != -1) {
		return ret;
	}

	switch (FUNC16(in)) {
	case 0x2:
	case 0x3:
	case 0x1:
	case 0x0:
		ret = FUNC6(instr, cmd);
		break;
	}

	if (ret != -1) {
		return ret;
	}
	return ret;
}