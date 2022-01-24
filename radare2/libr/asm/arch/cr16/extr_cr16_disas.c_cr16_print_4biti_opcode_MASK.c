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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 char** instrs_4bit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,char*,char) ; 

__attribute__((used)) static inline int FUNC4(struct cr16_cmd *cmd, ut16 instr)
{
	if (FUNC0(FUNC2(instr))) {
		return -1;
	}

	FUNC3(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s%c",
			instrs_4bit[FUNC2(instr)],
			FUNC1(instr) ? 'w' : 'b');
	return 0;
}