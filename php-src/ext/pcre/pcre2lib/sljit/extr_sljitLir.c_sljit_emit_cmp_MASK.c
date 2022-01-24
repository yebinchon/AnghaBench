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
struct sljit_jump {int dummy; } ;
struct sljit_compiler {int skip_checks; } ;
typedef  scalar_t__ sljit_sw ;
typedef  int sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SLJIT_EQUAL ; 
#define  SLJIT_GREATER 135 
#define  SLJIT_GREATER_EQUAL 134 
 int SLJIT_I32_OP ; 
 int SLJIT_IMM ; 
#define  SLJIT_LESS 133 
#define  SLJIT_LESS_EQUAL 132 
 int SLJIT_NOT_EQUAL ; 
 int SLJIT_NOT_ZERO ; 
 int SLJIT_REWRITABLE_JUMP ; 
 int SLJIT_SET_Z ; 
#define  SLJIT_SIG_GREATER 131 
#define  SLJIT_SIG_GREATER_EQUAL 130 
#define  SLJIT_SIG_LESS 129 
#define  SLJIT_SIG_LESS_EQUAL 128 
 int SLJIT_SUB ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  SLJIT_UNUSED ; 
 int VARIABLE_FLAG_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (struct sljit_compiler*,int,int,scalar_t__,int,scalar_t__) ; 
 struct sljit_jump* FUNC5 (struct sljit_compiler*,int,int,scalar_t__) ; 
 struct sljit_jump* FUNC6 (struct sljit_compiler*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sljit_compiler*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,scalar_t__) ; 

struct sljit_jump* FUNC8(struct sljit_compiler *compiler, sljit_s32 type,
	sljit_s32 src1, sljit_sw src1w,
	sljit_s32 src2, sljit_sw src2w)
{
	/* Default compare for most architectures. */
	sljit_s32 flags, tmp_src, condition;
	sljit_sw tmp_srcw;

	FUNC0();
	FUNC1(FUNC4(compiler, type, src1, src1w, src2, src2w));

	condition = type & 0xff;
#if (defined SLJIT_CONFIG_ARM_64 && SLJIT_CONFIG_ARM_64)
	if ((condition == SLJIT_EQUAL || condition == SLJIT_NOT_EQUAL)) {
		if ((src1 & SLJIT_IMM) && !src1w) {
			src1 = src2;
			src1w = src2w;
			src2 = SLJIT_IMM;
			src2w = 0;
		}
		if ((src2 & SLJIT_IMM) && !src2w)
			return emit_cmp_to0(compiler, type, src1, src1w);
	}
#endif

	if (FUNC3((src1 & SLJIT_IMM) && !(src2 & SLJIT_IMM))) {
		/* Immediate is prefered as second argument by most architectures. */
		switch (condition) {
		case SLJIT_LESS:
			condition = SLJIT_GREATER;
			break;
		case SLJIT_GREATER_EQUAL:
			condition = SLJIT_LESS_EQUAL;
			break;
		case SLJIT_GREATER:
			condition = SLJIT_LESS;
			break;
		case SLJIT_LESS_EQUAL:
			condition = SLJIT_GREATER_EQUAL;
			break;
		case SLJIT_SIG_LESS:
			condition = SLJIT_SIG_GREATER;
			break;
		case SLJIT_SIG_GREATER_EQUAL:
			condition = SLJIT_SIG_LESS_EQUAL;
			break;
		case SLJIT_SIG_GREATER:
			condition = SLJIT_SIG_LESS;
			break;
		case SLJIT_SIG_LESS_EQUAL:
			condition = SLJIT_SIG_GREATER_EQUAL;
			break;
		}

		type = condition | (type & (SLJIT_I32_OP | SLJIT_REWRITABLE_JUMP));
		tmp_src = src1;
		src1 = src2;
		src2 = tmp_src;
		tmp_srcw = src1w;
		src1w = src2w;
		src2w = tmp_srcw;
	}

	if (condition <= SLJIT_NOT_ZERO)
		flags = SLJIT_SET_Z;
	else
		flags = condition << VARIABLE_FLAG_SHIFT;

#if (defined SLJIT_VERBOSE && SLJIT_VERBOSE) \
		|| (defined SLJIT_ARGUMENT_CHECKS && SLJIT_ARGUMENT_CHECKS)
	compiler->skip_checks = 1;
#endif
	FUNC2(FUNC7(compiler, SLJIT_SUB | flags | (type & SLJIT_I32_OP),
		SLJIT_UNUSED, 0, src1, src1w, src2, src2w));
#if (defined SLJIT_VERBOSE && SLJIT_VERBOSE) \
		|| (defined SLJIT_ARGUMENT_CHECKS && SLJIT_ARGUMENT_CHECKS)
	compiler->skip_checks = 1;
#endif
	return FUNC6(compiler, condition | (type & (SLJIT_REWRITABLE_JUMP | SLJIT_I32_OP)));
}