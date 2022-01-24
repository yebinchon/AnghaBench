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
 int ADDIU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int LUI ; 
 int ORI ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sljit_compiler*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sljit_s32 FUNC5(struct sljit_compiler *compiler, sljit_s32 dst_ar, sljit_sw imm)
{
	if (!(imm & ~0xffff))
		return FUNC4(compiler, ORI | FUNC2(0) | FUNC3(dst_ar) | FUNC1(imm), dst_ar);

	if (imm < 0 && imm >= SIMM_MIN)
		return FUNC4(compiler, ADDIU | FUNC2(0) | FUNC3(dst_ar) | FUNC1(imm), dst_ar);

	FUNC0(FUNC4(compiler, LUI | FUNC3(dst_ar) | FUNC1(imm >> 16), dst_ar));
	return (imm & 0xffff) ? FUNC4(compiler, ORI | FUNC2(dst_ar) | FUNC3(dst_ar) | FUNC1(imm), dst_ar) : SLJIT_SUCCESS;
}