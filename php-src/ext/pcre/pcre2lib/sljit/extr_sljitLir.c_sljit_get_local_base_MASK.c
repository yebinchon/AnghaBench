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
struct sljit_compiler {int skip_checks; } ;
typedef  scalar_t__ sljit_sw ;
typedef  int /*<<< orphan*/  sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SLJIT_ADD ; 
 int /*<<< orphan*/  SLJIT_IMM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLJIT_MOV ; 
 int /*<<< orphan*/  SLJIT_SP ; 
 int /*<<< orphan*/  FUNC4 (struct sljit_compiler*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sljit_compiler*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sljit_compiler*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

sljit_s32 FUNC7(struct sljit_compiler *compiler, sljit_s32 dst, sljit_sw dstw, sljit_sw offset)
{
	FUNC2();
	FUNC1(FUNC4(compiler, dst, dstw, offset));

	FUNC0(FUNC3(SLJIT_SP), offset);
#if (defined SLJIT_VERBOSE && SLJIT_VERBOSE) \
		|| (defined SLJIT_ARGUMENT_CHECKS && SLJIT_ARGUMENT_CHECKS)
	compiler->skip_checks = 1;
#endif
	if (offset != 0)
		return FUNC6(compiler, SLJIT_ADD, dst, dstw, SLJIT_SP, 0, SLJIT_IMM, offset);
	return FUNC5(compiler, SLJIT_MOV, dst, dstw, SLJIT_SP, 0);
}