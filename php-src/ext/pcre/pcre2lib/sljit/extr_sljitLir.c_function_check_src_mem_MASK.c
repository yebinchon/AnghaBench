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
struct sljit_compiler {int scratches; int saveds; } ;
typedef  int sljit_sw ;
typedef  int sljit_s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int OFFS_REG_MASK ; 
 int REG_MASK ; 
 int SLJIT_MEM ; 
 int SLJIT_UNUSED ; 

__attribute__((used)) static sljit_s32 FUNC3(struct sljit_compiler *compiler, sljit_s32 p, sljit_sw i)
{
	if (compiler->scratches == -1 || compiler->saveds == -1)
		return 0;

	if (!(p & SLJIT_MEM))
		return 0;

	if (!((p & REG_MASK) == SLJIT_UNUSED || FUNC1(p & REG_MASK)))
		return 0;

	if (FUNC0(p & REG_MASK))
		return 0;

	if (p & OFFS_REG_MASK) {
		if ((p & REG_MASK) == SLJIT_UNUSED)
			return 0;

		if (!(FUNC1(FUNC2(p))))
			return 0;

		if (FUNC0(FUNC2(p)))
			return 0;

		if ((i & ~0x3) != 0)
			return 0;
	}

	return (p & ~(SLJIT_MEM | REG_MASK | OFFS_REG_MASK)) == 0;
}