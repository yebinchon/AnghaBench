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
struct h8300_cmd {int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 int /*<<< orphan*/  H8300_INSTR_MAXLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,struct h8300_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(const ut8 *bytes, struct h8300_cmd *cmd)
{
	int ret = 4;
	ut16 abs;

	if (FUNC0(bytes, cmd)) {
		return -1;
	}

	abs = FUNC1 (bytes, 2);
	FUNC2(cmd->operands, H8300_INSTR_MAXLEN, "@0x%x:16", abs);

	return ret;
}