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
typedef  int /*<<< orphan*/  ut16 ;
struct v850_cmd {int dummy; } ;

/* Variables and functions */
#define  V850_ADD 167 
#define  V850_ADDI 166 
#define  V850_ADD_IMM5 165 
#define  V850_AND 164 
#define  V850_ANDI 163 
#define  V850_BIT_MANIP 162 
#define  V850_CMP 161 
#define  V850_CMP_IMM5 160 
#define  V850_DIVH 159 
#define  V850_EXT1 158 
#define  V850_JARL1 157 
#define  V850_JARL2 156 
#define  V850_JMP 155 
#define  V850_LDB 154 
#define  V850_LDHW 153 
#define  V850_MOV 152 
#define  V850_MOVEA 151 
#define  V850_MOVHI 150 
#define  V850_MOV_IMM5 149 
#define  V850_MULH 148 
#define  V850_MULHI 147 
#define  V850_MULH_IMM5 146 
#define  V850_NOT 145 
#define  V850_OR 144 
#define  V850_ORI 143 
#define  V850_SAR_IMM5 142 
#define  V850_SATADD 141 
#define  V850_SATADD_IMM5 140 
#define  V850_SATSUB 139 
#define  V850_SATSUBI 138 
#define  V850_SATSUBR 137 
#define  V850_SHL_IMM5 136 
#define  V850_SHR_IMM5 135 
#define  V850_STB 134 
#define  V850_STHW 133 
#define  V850_SUB 132 
#define  V850_SUBR 131 
#define  V850_TST 130 
#define  V850_XOR 129 
#define  V850_XORI 128 
 int FUNC0 (int /*<<< orphan*/  const*,int,struct v850_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct v850_cmd*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,struct v850_cmd*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int,struct v850_cmd*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct v850_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int,struct v850_cmd*) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int,struct v850_cmd*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct v850_cmd*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 

int FUNC10 (const ut8 *instr, int len, struct v850_cmd *cmd) {
	int ret;

	if (len < 2) {
		return -1;
	}
	ut16 in = FUNC9 (instr);

	switch (FUNC8 (in)) {
	case V850_MOV:
	case V850_NOT:
	case V850_DIVH:
	case V850_JMP:
	case V850_SATSUBR:
	case V850_SATSUB:
	case V850_SATADD:
	case V850_MULH:
	case V850_OR:
	case V850_XOR:
	case V850_AND:
	case V850_TST:
	case V850_SUBR:
	case V850_SUB:
	case V850_ADD:
	case V850_CMP:
		ret = FUNC7 (in, cmd);
		break;
	case V850_MOV_IMM5:
	case V850_SATADD_IMM5:
	case V850_ADD_IMM5:
	case V850_CMP_IMM5:
	case V850_SHR_IMM5:
	case V850_SAR_IMM5:
	case V850_SHL_IMM5:
	case V850_MULH_IMM5:
		ret = FUNC4 (in, cmd);
		break;
	case V850_ADDI:
	case V850_MOVEA:
	case V850_MOVHI:
	case V850_SATSUBI:
	case V850_ORI:
	case V850_XORI:
	case V850_ANDI:
	case V850_MULHI:
		ret = FUNC0 (instr, len, cmd);
		break;
	case V850_JARL1:
	case V850_JARL2:
		ret = FUNC5 (instr, len, cmd);
		break;
	case V850_STB:
	case V850_LDB:
	case V850_LDHW:
	case V850_STHW:
		ret = FUNC6 (instr, len, cmd);
		break;
	case V850_BIT_MANIP:
		ret = FUNC2 (instr, len, cmd);
		break;
	case V850_EXT1:
		ret = FUNC3 (instr, len, cmd);
		break;
	default:
		if ((FUNC8 (in) >> 2) == 0xB) {
			ret = FUNC1 (in, len, cmd);
		} else {
			ret = -1;
		}
	}

	return ret;
}