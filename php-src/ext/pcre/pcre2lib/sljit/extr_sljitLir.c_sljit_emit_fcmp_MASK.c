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
typedef  int /*<<< orphan*/  sljit_sw ;
typedef  int sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SLJIT_CMP_F64 ; 
 int SLJIT_I32_OP ; 
 int VARIABLE_FLAG_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct sljit_compiler*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sljit_compiler*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sljit_jump* FUNC4 (struct sljit_compiler*,int) ; 

struct sljit_jump* FUNC5(struct sljit_compiler *compiler, sljit_s32 type,
	sljit_s32 src1, sljit_sw src1w,
	sljit_s32 src2, sljit_sw src2w)
{
	FUNC0();
	FUNC1(FUNC2(compiler, type, src1, src1w, src2, src2w));

#if (defined SLJIT_VERBOSE && SLJIT_VERBOSE) \
		|| (defined SLJIT_ARGUMENT_CHECKS && SLJIT_ARGUMENT_CHECKS)
	compiler->skip_checks = 1;
#endif
	FUNC3(compiler, SLJIT_CMP_F64 | ((type & 0xff) << VARIABLE_FLAG_SHIFT) | (type & SLJIT_I32_OP), src1, src1w, src2, src2w);

#if (defined SLJIT_VERBOSE && SLJIT_VERBOSE) \
		|| (defined SLJIT_ARGUMENT_CHECKS && SLJIT_ARGUMENT_CHECKS)
	compiler->skip_checks = 1;
#endif
	return FUNC4(compiler, type);
}