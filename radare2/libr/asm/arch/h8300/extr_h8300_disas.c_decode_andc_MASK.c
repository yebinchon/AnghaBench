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
typedef  int ut8 ;
struct h8300_cmd {int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 int /*<<< orphan*/  H8300_INSTR_MAXLEN ; 
 scalar_t__ FUNC0 (int const*,struct h8300_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static int FUNC2(const ut8 *bytes, struct h8300_cmd *cmd)
{
	int ret = 2;

	if (FUNC0(bytes, cmd)) {
		return -1;
	}

	FUNC1(cmd->operands, H8300_INSTR_MAXLEN, "#0x%x:8,ccr", bytes[1]);

	return ret;
}