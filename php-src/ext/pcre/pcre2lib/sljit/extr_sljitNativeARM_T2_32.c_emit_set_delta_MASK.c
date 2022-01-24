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
 int ADDWI ; 
 int ADD_WI ; 
 int FUNC0 (int) ; 
 int INVALID_IMM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLJIT_ERR_UNSUPPORTED ; 
 int SUBWI ; 
 int SUB_WI ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC5(struct sljit_compiler *compiler, sljit_s32 dst, sljit_s32 reg, sljit_sw value)
{
	if (value >= 0) {
		if (value <= 0xfff)
			return FUNC4(compiler, ADDWI | FUNC1(dst) | FUNC2(reg) | FUNC0(value));
		value = FUNC3(value);
		if (value != INVALID_IMM)
			return FUNC4(compiler, ADD_WI | FUNC1(dst) | FUNC2(reg) | value);
	}
	else {
		value = -value;
		if (value <= 0xfff)
			return FUNC4(compiler, SUBWI | FUNC1(dst) | FUNC2(reg) | FUNC0(value));
		value = FUNC3(value);
		if (value != INVALID_IMM)
			return FUNC4(compiler, SUB_WI | FUNC1(dst) | FUNC2(reg) | value);
	}
	return SLJIT_ERR_UNSUPPORTED;
}