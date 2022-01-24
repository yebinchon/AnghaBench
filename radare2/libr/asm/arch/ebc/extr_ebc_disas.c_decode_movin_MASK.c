#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_7__ {char sign; int n; int /*<<< orphan*/  c; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ebc_index_t ;
struct TYPE_8__ {char* instr; int /*<<< orphan*/  operands; } ;
typedef  TYPE_2__ ebc_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int EBC_INSTR_MAXLEN ; 
 int const EBC_OPCODE_MASK ; 
 int /*<<< orphan*/  EBC_OPERANDS_MAXLEN ; 
 scalar_t__ FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int const*,TYPE_1__*) ; 
 char** instr_names ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC6(const ut8 *bytes, ebc_command_t *cmd) {
	int ret = 2;
	char p1 = 0;
	char indx1[32] = {0};
	char indx2[32] = {0};
	char op1[32];
	char sign;
	ebc_index_t idx = {0};

	switch (bytes[0] >> 6) {
	case 0: ret = -1; break;
	case 1: p1 = 'w'; break;
	case 2: p1 = 'd'; break;
	case 3: p1 = 'q'; break;
	}

	if (ret < 0) {
		return ret;
	}

	FUNC5(cmd->instr, EBC_INSTR_MAXLEN, "%s%c",
			instr_names[bytes[0] & EBC_OPCODE_MASK], p1);

	if (FUNC1(bytes[1], 6)) {
		FUNC2(bytes + 2, &idx);

		sign = idx.sign ? '+' : '-';

		FUNC5(indx1, 32, "(%c%u, %c%u)", sign,
				idx.n, sign, idx.c);

		ret += 2;
	}

	switch (p1) {
	case 'w':
		FUNC2(bytes + ret, &idx);
		ret += 2;
		break;
	case 'd':
		FUNC3(bytes + ret, &idx);
		ret += 4;
		break;
	case 'q':
		FUNC4(bytes + ret, &idx);
		ret += 8;
		break;
	}

	sign = idx.sign ? '+' : '-';

	FUNC5 (indx2, 32, "(%c%u, %c%u)", sign, idx.n, sign, idx.c);

	FUNC5 (op1, 32, "%sr%u", FUNC1 (bytes[1], 3) ? "@" : "", bytes[1] & 0x7);
	FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN, "%s%s, %s", op1, indx1, indx2);
	return ret;
}