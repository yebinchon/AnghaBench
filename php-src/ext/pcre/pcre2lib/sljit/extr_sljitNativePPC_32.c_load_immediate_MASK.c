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
 int ADDI ; 
 int ADDIS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int ORI ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 int /*<<< orphan*/  TMP_ZERO ; 
 int /*<<< orphan*/  FUNC5 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC6(struct sljit_compiler *compiler, sljit_s32 reg, sljit_sw imm)
{
	if (imm <= SIMM_MAX && imm >= SIMM_MIN)
		return FUNC5(compiler, ADDI | FUNC1(reg) | FUNC0(0) | FUNC3(imm));

	if (!(imm & ~0xffff))
		return FUNC5(compiler, ORI | FUNC4(TMP_ZERO) | FUNC0(reg) | FUNC3(imm));

	FUNC2(FUNC5(compiler, ADDIS | FUNC1(reg) | FUNC0(0) | FUNC3(imm >> 16)));
	return (imm & 0xffff) ? FUNC5(compiler, ORI | FUNC4(reg) | FUNC0(reg) | FUNC3(imm)) : SLJIT_SUCCESS;
}