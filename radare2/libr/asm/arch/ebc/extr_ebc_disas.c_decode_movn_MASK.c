#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_6__ {int n; int /*<<< orphan*/  c; scalar_t__ sign; } ;
typedef  TYPE_1__ ebc_index_t ;
struct TYPE_7__ {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;
typedef  TYPE_2__ ebc_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  EBC_INSTR_MAXLEN ; 
 int const EBC_MOVNW ; 
 int const EBC_OPCODE_MASK ; 
 int /*<<< orphan*/  EBC_OPERANDS_MAXLEN ; 
 scalar_t__ FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int const*,TYPE_1__*) ; 
 char** instr_names ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC5(const ut8 *bytes, ebc_command_t *cmd) {
	int ret = 2;
	unsigned op1 = bytes[1] & 0x07;
	unsigned op2 = (bytes[1] >> 4) & 0x07;
	char op1c[32], op2c[32];
	char indx1[32] = {0};
	char indx2[32] = {0};
	char sign;
	ebc_index_t idx;

	FUNC4(cmd->instr, EBC_INSTR_MAXLEN, "%s",
			instr_names[bytes[0] & EBC_OPCODE_MASK]);

	FUNC4(op1c, 32, "%sr%u", FUNC1(bytes[1], 3) ? "@" : "", op1);
	FUNC4(op2c, 32, "%sr%u", FUNC1(bytes[1], 7) ? "@" : "", op2);

	if ((bytes[0] & EBC_OPCODE_MASK) == EBC_MOVNW) {
		if (FUNC1(bytes[0], 7)) {
			FUNC2(bytes + ret, &idx);
			sign = idx.sign ? '+' : '-';
			FUNC4(indx1, 32, "(%c%u, %c%u)", sign, idx.n, sign, idx.c);
			ret += 2;
		}
		if (FUNC1(bytes[0], 6)) {
			FUNC2(bytes + ret, &idx);
			sign = idx.sign ? '+' : '-';
			FUNC4(indx2, 32, "(%c%u, %c%u)", sign, idx.n, sign, idx.c);
			ret += 2;
		}
	} else {
		if (FUNC1(bytes[0], 7)) {
			FUNC3(bytes + ret, &idx);
			sign = idx.sign ? '+' : '-';
			FUNC4(indx1, 32, "(%c%u, %c%u)", sign, idx.n, sign, idx.c);
			ret += 4;
		}
		if (FUNC1(bytes[0], 6)) {
			FUNC3(bytes + ret, &idx);
			sign = idx.sign ? '+' : '-';
			FUNC4(indx2, 32, "(%c%u, %c%u)", sign, idx.n, sign, idx.c);
			ret += 4;
		}
	}

	FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN, "%s%s, %s%s", op1c, indx1, op2c, indx2);
	return ret;
}