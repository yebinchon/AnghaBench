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
typedef  int ut16 ;
struct msp430_cmd {int jmp_addr; size_t jmp_cond; int /*<<< orphan*/  type; int /*<<< orphan*/  opcode; int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;
typedef  int st16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSP430_JUMP ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char** jmp_instrs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static void FUNC3(ut16 instr, struct msp430_cmd *cmd)
{
	ut16 addr;

	FUNC2(cmd->instr, sizeof (cmd->instr), "%s", jmp_instrs[FUNC0(instr)]);

	addr = instr & 0x3FF;

	cmd->jmp_addr = addr >= 0x300 ? (st16)((0xFE00 | addr) * 2 + 2) : (addr & 0x1FF) * 2 + 2;
	FUNC2(cmd->operands, sizeof (cmd->operands), "$%c0x%04x", addr >= 0x300 ? '-' : '+',
			addr >= 0x300 ? 0x400 - ((addr & 0x1FF) * 2 + 2) : (addr & 0x1FF) * 2 + 2);

	cmd->jmp_cond = FUNC0(instr);
	cmd->opcode = FUNC1(instr);
	cmd->type = MSP430_JUMP;
}