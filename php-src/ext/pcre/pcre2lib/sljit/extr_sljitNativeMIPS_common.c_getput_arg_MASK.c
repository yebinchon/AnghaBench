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
struct sljit_compiler {int cache_argw; size_t cache_arg; } ;
typedef  int sljit_sw ;
typedef  size_t sljit_s32 ;

/* Variables and functions */
 int ADDIU_W ; 
 int ADDU_W ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 size_t GPR_REG ; 
 int FUNC4 (int) ; 
 size_t LOAD_DATA ; 
 size_t MEM_MASK ; 
 size_t MOVABLE_INS ; 
 size_t FUNC5 (size_t) ; 
 size_t OFFS_REG_MASK ; 
 size_t REG_MASK ; 
 int FUNC6 (size_t) ; 
 int FUNC7 (size_t) ; 
 int FUNC8 (int) ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 size_t SLJIT_MEM ; 
 scalar_t__ FUNC10 (int) ; 
 int SLL_W ; 
 int FUNC11 (size_t) ; 
 int FUNC12 (size_t) ; 
 size_t TMP_REG1 ; 
 size_t TMP_REG3 ; 
 int* data_transfer_insts ; 
 size_t FUNC13 (struct sljit_compiler*,size_t,int) ; 
 size_t FUNC14 (struct sljit_compiler*,int,size_t) ; 

__attribute__((used)) static sljit_s32 FUNC15(struct sljit_compiler *compiler, sljit_s32 flags, sljit_s32 reg_ar, sljit_s32 arg, sljit_sw argw, sljit_s32 next_arg, sljit_sw next_argw)
{
	sljit_s32 tmp_ar, base, delay_slot;

	FUNC9(arg & SLJIT_MEM);
	if (!(next_arg & SLJIT_MEM)) {
		next_arg = 0;
		next_argw = 0;
	}

	if ((flags & MEM_MASK) <= GPR_REG && (flags & LOAD_DATA)) {
		tmp_ar = reg_ar;
		delay_slot = reg_ar;
	}
	else {
		tmp_ar = FUNC2(TMP_REG1);
		delay_slot = MOVABLE_INS;
	}
	base = arg & REG_MASK;

	if (FUNC10(arg & OFFS_REG_MASK)) {
		argw &= 0x3;

		/* Using the cache. */
		if (argw == compiler->cache_argw) {
			if (arg == compiler->cache_arg)
				return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC6(TMP_REG3) | FUNC12(reg_ar), delay_slot);

			if ((SLJIT_MEM | (arg & OFFS_REG_MASK)) == compiler->cache_arg) {
				if (arg == next_arg && argw == (next_argw & 0x3)) {
					compiler->cache_arg = arg;
					compiler->cache_argw = argw;
					FUNC3(FUNC14(compiler, ADDU_W | FUNC6(base) | FUNC11(TMP_REG3) | FUNC0(TMP_REG3), FUNC2(TMP_REG3)));
					return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC6(TMP_REG3) | FUNC12(reg_ar), delay_slot);
				}
				FUNC3(FUNC14(compiler, ADDU_W | FUNC6(base) | FUNC11(TMP_REG3) | FUNC1(tmp_ar), tmp_ar));
				return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC7(tmp_ar) | FUNC12(reg_ar), delay_slot);
			}
		}

		if (FUNC10(argw)) {
			compiler->cache_arg = SLJIT_MEM | (arg & OFFS_REG_MASK);
			compiler->cache_argw = argw;
			FUNC3(FUNC14(compiler, SLL_W | FUNC11(FUNC5(arg)) | FUNC0(TMP_REG3) | FUNC8(argw), FUNC2(TMP_REG3)));
		}

		if (arg == next_arg && argw == (next_argw & 0x3)) {
			compiler->cache_arg = arg;
			compiler->cache_argw = argw;
			FUNC3(FUNC14(compiler, ADDU_W | FUNC6(base) | FUNC11(!argw ? FUNC5(arg) : TMP_REG3) | FUNC0(TMP_REG3), FUNC2(TMP_REG3)));
			tmp_ar = FUNC2(TMP_REG3);
		}
		else
			FUNC3(FUNC14(compiler, ADDU_W | FUNC6(base) | FUNC11(!argw ? FUNC5(arg) : TMP_REG3) | FUNC1(tmp_ar), tmp_ar));
		return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC7(tmp_ar) | FUNC12(reg_ar), delay_slot);
	}

	if (compiler->cache_arg == arg && argw - compiler->cache_argw <= SIMM_MAX && argw - compiler->cache_argw >= SIMM_MIN) {
		if (argw != compiler->cache_argw) {
			FUNC3(FUNC14(compiler, ADDIU_W | FUNC6(TMP_REG3) | FUNC11(TMP_REG3) | FUNC4(argw - compiler->cache_argw), FUNC2(TMP_REG3)));
			compiler->cache_argw = argw;
		}
		return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC6(TMP_REG3) | FUNC12(reg_ar), delay_slot);
	}

	if (compiler->cache_arg == SLJIT_MEM && argw - compiler->cache_argw <= SIMM_MAX && argw - compiler->cache_argw >= SIMM_MIN) {
		if (argw != compiler->cache_argw)
			FUNC3(FUNC14(compiler, ADDIU_W | FUNC6(TMP_REG3) | FUNC11(TMP_REG3) | FUNC4(argw - compiler->cache_argw), FUNC2(TMP_REG3)));
	}
	else {
		compiler->cache_arg = SLJIT_MEM;
		FUNC3(FUNC13(compiler, FUNC2(TMP_REG3), argw));
	}
	compiler->cache_argw = argw;

	if (!base)
		return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC6(TMP_REG3) | FUNC12(reg_ar), delay_slot);

	if (arg == next_arg && next_argw - argw <= SIMM_MAX && next_argw - argw >= SIMM_MIN) {
		compiler->cache_arg = arg;
		FUNC3(FUNC14(compiler, ADDU_W | FUNC6(TMP_REG3) | FUNC11(base) | FUNC0(TMP_REG3), FUNC2(TMP_REG3)));
		return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC6(TMP_REG3) | FUNC12(reg_ar), delay_slot);
	}

	FUNC3(FUNC14(compiler, ADDU_W | FUNC6(TMP_REG3) | FUNC11(base) | FUNC1(tmp_ar), tmp_ar));
	return FUNC14(compiler, data_transfer_insts[flags & MEM_MASK] | FUNC7(tmp_ar) | FUNC12(reg_ar), delay_slot);
}