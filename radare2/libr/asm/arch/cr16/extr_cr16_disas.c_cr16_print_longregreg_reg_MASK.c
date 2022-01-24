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
typedef  int ut32 ;
struct cr16_cmd {int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 scalar_t__ CR16_INSTR_MAXLEN ; 
 scalar_t__ FUNC0 (int) ; 
 char** cr16_regs_names ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 

__attribute__((used)) static inline int FUNC2(struct cr16_cmd *cmd,
		ut32 rel, ut8 src, ut8 dst, ut8 swap)
{
	if (FUNC0(src) || FUNC0(src + 1)
			|| FUNC0(dst)) {
		return -1;
	}

	if (swap) {
		FUNC1(cmd->operands, CR16_INSTR_MAXLEN - 1,
				"%s,0x%08x(%s,%s)", cr16_regs_names[src], rel,
				cr16_regs_names[dst + 1],
				cr16_regs_names[dst]);
	} else {
		FUNC1(cmd->operands, CR16_INSTR_MAXLEN - 1,
			"0x%08x(%s,%s),%s", rel, cr16_regs_names[src + 1],
			cr16_regs_names[src], cr16_regs_names[dst]);

	}
	return 0;
}