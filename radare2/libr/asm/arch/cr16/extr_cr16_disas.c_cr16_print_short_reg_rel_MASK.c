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
typedef  size_t ut8 ;
typedef  int ut16 ;
struct cr16_cmd {int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 scalar_t__ CR16_INSTR_MAXLEN ; 
 scalar_t__ FUNC0 (size_t) ; 
 char** cr16_regs_names ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,size_t,...) ; 

__attribute__((used)) static inline int FUNC2(struct cr16_cmd *cmd,
				ut8 sh, ut16 rel, ut8 reg)
{
	if (FUNC0(reg)) {
		return -1;
	}

	if (rel) {
		FUNC1(cmd->operands, CR16_INSTR_MAXLEN - 1,
			"$0x%02x,0x%04x(%s)", sh, rel, cr16_regs_names[reg]);
	} else {
		FUNC1(cmd->operands, CR16_INSTR_MAXLEN - 1,
			"$0x%02x,0(%s)", sh, cr16_regs_names[reg]);
	}

	return 0;
}