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
struct sljit_compiler {int dummy; } ;
typedef  int sljit_sw ;
typedef  int sljit_s32 ;

/* Variables and functions */
 int ARG_TEST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int GPR_REG ; 
 int FUNC4 (int) ; 
 int LOAD_DATA ; 
 int MEM_MASK ; 
 int /*<<< orphan*/  MOVABLE_INS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int OFFS_REG_MASK ; 
 int REG_MASK ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int SLJIT_MEM ; 
 scalar_t__ FUNC9 (int) ; 
 int* data_transfer_insts ; 
 int /*<<< orphan*/  FUNC10 (struct sljit_compiler*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sljit_s32 FUNC11(struct sljit_compiler *compiler, sljit_s32 flags, sljit_s32 reg, sljit_s32 arg, sljit_sw argw)
{
	FUNC8(arg & SLJIT_MEM);

	if ((!(arg & OFFS_REG_MASK) && argw <= SIMM_MAX && argw >= SIMM_MIN)
			|| ((arg & OFFS_REG_MASK) && (argw & 0x3) == 0)) {
		/* Works for both absoulte and relative addresses (immediate case). */
		if (FUNC9(flags & ARG_TEST))
			return 1;
		FUNC2(FUNC10(compiler, data_transfer_insts[flags & MEM_MASK]
			| ((flags & MEM_MASK) <= GPR_REG ? FUNC0(reg) : FUNC3(reg))
			| FUNC6(arg & REG_MASK) | ((arg & OFFS_REG_MASK) ? FUNC7(FUNC5(arg)) : FUNC4(argw)),
			((flags & MEM_MASK) <= GPR_REG && (flags & LOAD_DATA)) ? FUNC1(reg) : MOVABLE_INS));
		return -1;
	}
	return 0;
}