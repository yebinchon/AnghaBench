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
typedef  int /*<<< orphan*/  ut16 ;
struct cr16_cmd {int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 scalar_t__ CR16_INSTR_MAXLEN ; 
 scalar_t__ FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char** instrs_4bit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 

__attribute__((used)) static inline int FUNC3(struct cr16_cmd *cmd, ut16 instr)
{
	if (FUNC0(FUNC1(instr))) {
		return -1;
	}

	FUNC2(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s",
			instrs_4bit[FUNC1(instr)]);

	return 0;
}