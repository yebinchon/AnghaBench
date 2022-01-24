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
typedef  int /*<<< orphan*/  sljit_s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int IMM_ARG ; 
 int OR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SETHI ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct sljit_compiler*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sljit_s32 FUNC6(struct sljit_compiler *compiler, sljit_s32 dst, sljit_sw imm)
{
	if (imm <= SIMM_MAX && imm >= SIMM_MIN)
		return FUNC5(compiler, OR | FUNC0(dst) | FUNC4(0) | FUNC3(imm), FUNC1(dst));

	FUNC2(FUNC5(compiler, SETHI | FUNC0(dst) | ((imm >> 10) & 0x3fffff), FUNC1(dst)));
	return (imm & 0x3ff) ? FUNC5(compiler, OR | FUNC0(dst) | FUNC4(dst) | IMM_ARG | (imm & 0x3ff), FUNC1(dst)) : SLJIT_SUCCESS;
}