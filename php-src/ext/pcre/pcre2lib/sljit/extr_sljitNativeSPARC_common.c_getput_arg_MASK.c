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
struct sljit_compiler {size_t cache_arg; int cache_argw; } ;
typedef  int sljit_sw ;
typedef  size_t sljit_s32 ;
typedef  int sljit_ins ;

/* Variables and functions */
 int ADD ; 
 int FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 size_t GPR_REG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int IMM_ARG ; 
 size_t LOAD_DATA ; 
 size_t MEM_MASK ; 
 size_t MOVABLE_INS ; 
 size_t FUNC5 (size_t) ; 
 size_t OFFS_REG_MASK ; 
 size_t REG_MASK ; 
 int FUNC6 (size_t) ; 
 int FUNC7 (size_t) ; 
 scalar_t__ SIMM_MAX ; 
 scalar_t__ SIMM_MIN ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 size_t SLJIT_MEM ; 
 scalar_t__ FUNC9 (size_t) ; 
 int SLL_W ; 
 size_t TMP_REG1 ; 
 size_t TMP_REG3 ; 
 int* data_transfer_insts ; 
 size_t FUNC10 (struct sljit_compiler*,size_t,int) ; 
 size_t FUNC11 (struct sljit_compiler*,int,size_t) ; 

__attribute__((used)) static sljit_s32 FUNC12(struct sljit_compiler *compiler, sljit_s32 flags, sljit_s32 reg, sljit_s32 arg, sljit_sw argw, sljit_s32 next_arg, sljit_sw next_argw)
{
	sljit_s32 base, arg2, delay_slot;
	sljit_ins dest;

	FUNC8(arg & SLJIT_MEM);
	if (!(next_arg & SLJIT_MEM)) {
		next_arg = 0;
		next_argw = 0;
	}

	base = arg & REG_MASK;
	if (FUNC9(arg & OFFS_REG_MASK)) {
		argw &= 0x3;

		/* Using the cache. */
		if (((SLJIT_MEM | (arg & OFFS_REG_MASK)) == compiler->cache_arg) && (argw == compiler->cache_argw))
			arg2 = TMP_REG3;
		else {
			if ((arg & OFFS_REG_MASK) == (next_arg & OFFS_REG_MASK) && argw == (next_argw & 0x3)) {
				compiler->cache_arg = SLJIT_MEM | (arg & OFFS_REG_MASK);
				compiler->cache_argw = argw;
				arg2 = TMP_REG3;
			}
			else if ((flags & LOAD_DATA) && ((flags & MEM_MASK) <= GPR_REG) && reg != base && reg != FUNC5(arg))
				arg2 = reg;
			else /* It must be a mov operation, so tmp1 must be free to use. */
				arg2 = TMP_REG1;
			FUNC2(FUNC11(compiler, SLL_W | FUNC0(arg2) | FUNC6(FUNC5(arg)) | IMM_ARG | argw, FUNC1(arg2)));
		}
	}
	else {
		/* Using the cache. */
		if ((compiler->cache_arg == SLJIT_MEM) && (argw - compiler->cache_argw) <= SIMM_MAX && (argw - compiler->cache_argw) >= SIMM_MIN) {
			if (argw != compiler->cache_argw) {
				FUNC2(FUNC11(compiler, ADD | FUNC0(TMP_REG3) | FUNC6(TMP_REG3) | FUNC4(argw - compiler->cache_argw), FUNC1(TMP_REG3)));
				compiler->cache_argw = argw;
			}
			arg2 = TMP_REG3;
		} else {
			if ((next_argw - argw) <= SIMM_MAX && (next_argw - argw) >= SIMM_MIN) {
				compiler->cache_arg = SLJIT_MEM;
				compiler->cache_argw = argw;
				arg2 = TMP_REG3;
			}
			else if ((flags & LOAD_DATA) && ((flags & MEM_MASK) <= GPR_REG) && reg != base)
				arg2 = reg;
			else /* It must be a mov operation, so tmp1 must be free to use. */
				arg2 = TMP_REG1;
			FUNC2(FUNC10(compiler, arg2, argw));
		}
	}

	dest = ((flags & MEM_MASK) <= GPR_REG ? FUNC0(reg) : FUNC3(reg));
	delay_slot = ((flags & MEM_MASK) <= GPR_REG && (flags & LOAD_DATA)) ? FUNC1(reg) : MOVABLE_INS;
	if (!base)
		return FUNC11(compiler, data_transfer_insts[flags & MEM_MASK] | dest | FUNC6(arg2) | FUNC4(0), delay_slot);
	return FUNC11(compiler, data_transfer_insts[flags & MEM_MASK] | dest | FUNC6(base) | FUNC7(arg2), delay_slot);
}