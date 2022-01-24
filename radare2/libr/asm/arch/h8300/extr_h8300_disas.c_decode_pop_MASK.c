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
struct h8300_cmd {char* instr; int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 int H8300_INSTR_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2(const ut8 *bytes, struct h8300_cmd *cmd)
{
	int ret = 2;
	ut8 tmp = bytes[1] >> 4;

	FUNC1(cmd->instr, tmp == 0x7 ? "pop" : "push",
			H8300_INSTR_MAXLEN - 1);
	cmd->instr[H8300_INSTR_MAXLEN - 1] = '\0';


	FUNC0(cmd->operands, H8300_INSTR_MAXLEN,
			"r%u", bytes[1] & 0x7);

	return ret;
}