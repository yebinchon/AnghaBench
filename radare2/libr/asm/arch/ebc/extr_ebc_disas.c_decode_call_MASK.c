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
typedef  unsigned long ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_5__ {int /*<<< orphan*/  c; int /*<<< orphan*/  n; scalar_t__ sign; } ;
typedef  TYPE_1__ ebc_index_t ;
struct TYPE_6__ {int /*<<< orphan*/  instr; int /*<<< orphan*/  operands; } ;
typedef  TYPE_2__ ebc_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 size_t EBC_CALL ; 
 int /*<<< orphan*/  EBC_INSTR_MAXLEN ; 
 int /*<<< orphan*/  EBC_OPERANDS_MAXLEN ; 
 scalar_t__ FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * instr_names ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(const ut8 *bytes, ebc_command_t *cmd) {
	int ret;
	short bits = 32;
	ut8 op1 = bytes[1] & 0x7;
	ut32 i1;
	unsigned long i2;
	ebc_index_t idx32;
	char sign;

	if (!FUNC1 (bytes[0], 6)) {
		//CALL32
		bits = 32;
		ret = 2;
		if (FUNC1 (bytes[1], 3)) {
			//operand 1 indirect
			if (FUNC1 (bytes[0], 7)) {
				// immediate data is present
				FUNC2 (bytes + 2, &idx32);
				sign = idx32.sign ? '+' : '-';

				FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN,
					"@r%d(%c%u, %c%u)",
					op1, sign, idx32.n, sign, idx32.c);
				ret = 6;
			} else {
				FUNC3 (cmd->operands, EBC_OPERANDS_MAXLEN,
					"@r%d", op1);
			}
		} else {
			//operand 1 direct
			if (FUNC1 (bytes[0], 7)) {
				// immediate data present
				i1 = *(ut32 *)(bytes + 2);
				FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN,
					"r%d(0x%x)", op1, i1);
				ret = 6;
			} else {
				// no immediate data present
				FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN,
					"r%d", op1);
			}
		}
	} else {
		bits = 64;
		ret = 10;
		i2 = *(ut64 *)&bytes[2];
		FUNC0 (cmd->operands, EBC_OPERANDS_MAXLEN, "0x%lx", i2);
	}
	FUNC0 (cmd->instr, EBC_INSTR_MAXLEN, "%s%d%s%s",
		instr_names[EBC_CALL], bits,
		FUNC1 (bytes[1], 5) ? "ex" : "",
		FUNC1 (bytes[1], 4) ? "" : "a");
	return ret;
}