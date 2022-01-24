#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_5__ {int n; int /*<<< orphan*/  c; int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ ebc_index_t ;
struct TYPE_6__ {int /*<<< orphan*/  operands; } ;
typedef  TYPE_2__ ebc_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
#define  EBC_MOVSND 129 
#define  EBC_MOVSNW 128 
 int const EBC_OPCODE_MASK ; 
 int /*<<< orphan*/  EBC_OPERANDS_MAXLEN ; 
 scalar_t__ FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC4(const ut8 *bytes, ebc_command_t *cmd) {
	int ret = 2;
	unsigned op1, op2;
	char op1c[32], op2c[32], sign;
	char ind1[32] = {0}, ind2[32] = {0};

	op1 = bytes[1] & 0x07;
	op2 = (bytes[1] >> 4) & 0x07;

	FUNC3(op1c, 32, "%sr%u", FUNC1(bytes[1], 3) ? "@" : "", op1);
	FUNC3(op2c, 32, "%sr%u", FUNC1(bytes[1], 7) ? "@" : "", op2);

	switch (bytes[0] & EBC_OPCODE_MASK) {
	case EBC_MOVSNW:
		if (FUNC1(bytes[0], 7)) {
			ebc_index_t idx;
			ret += 2;
			FUNC2(bytes + 2, &idx);
			sign = idx.sign? '+': '-';
			FUNC3 (ind1, 32, "(%c%u, %c%u)",
				sign, idx.n, sign, idx.c);
		}
		if (FUNC1(bytes[0], 6)) {
			ebc_index_t idx;
			FUNC2 (bytes + ret, &idx);
			sign = idx.sign? '+': '-';
			FUNC3 (ind2, 32, "(%c%u, %c%u)",
				sign, idx.n, sign, idx.c);
			ret += 2;
		}
		break;
	case EBC_MOVSND:
		break;
	}
	FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN, "%s%s, %s%s",
		op1c, ind1, op2c, ind2);
	return ret;
}