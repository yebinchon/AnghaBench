#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  operands; int /*<<< orphan*/  instr; } ;
typedef  TYPE_1__ ebc_command_t ;

/* Variables and functions */
 size_t EBC_BREAK ; 
 int /*<<< orphan*/  EBC_INSTR_MAXLEN ; 
 int /*<<< orphan*/  EBC_OPERANDS_MAXLEN ; 
 char** instr_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC1(const ut8 *bytes, ebc_command_t *cmd) {
	FUNC0(cmd->instr, EBC_INSTR_MAXLEN, "%s", instr_names[EBC_BREAK]);
	FUNC0(cmd->operands, EBC_OPERANDS_MAXLEN, "%d", bytes[1]);
	return 2;
}