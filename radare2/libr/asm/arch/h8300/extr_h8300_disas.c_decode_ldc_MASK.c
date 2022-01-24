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
 int const H8300_LDC ; 
 int const H8300_LDC_2 ; 
 int const H8300_ORC ; 
 int const H8300_STC ; 
 int const H8300_XORC ; 
 scalar_t__ FUNC0 (int const*,struct h8300_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int const,...) ; 

__attribute__((used)) static int FUNC2(const ut8 *bytes, struct h8300_cmd *cmd)
{
	int ret = 2;

	if (FUNC0(bytes, cmd)) {
		return -1;
	}

	if (bytes[0] == H8300_LDC_2 || bytes[0] == H8300_XORC ||
			bytes[0] == H8300_ORC) {
		FUNC1(cmd->operands, H8300_INSTR_MAXLEN,
				"#0x%x:8,ccr", bytes[1]);
	} else if (bytes[0] == H8300_LDC) {
		FUNC1(cmd->operands, H8300_INSTR_MAXLEN,
				"r%u%c,ccr", bytes[1] & 0x7,
				bytes[1] & 0x8 ? 'l' : 'h');
	} else if (bytes[0] == H8300_STC) {
		FUNC1(cmd->operands, H8300_INSTR_MAXLEN,
				"ccr,r%u%c", bytes[1] & 0x7,
				bytes[1] & 0x8 ? 'l' : 'h');
	}

	return ret;
}