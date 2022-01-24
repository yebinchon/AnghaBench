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
typedef  struct sljit_compiler* sljit_sw ;
typedef  struct sljit_compiler* sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sljit_compiler* SLJIT_ERR_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC2 (struct sljit_compiler*) ; 
 int /*<<< orphan*/  FUNC3 (struct sljit_compiler*,struct sljit_compiler*,struct sljit_compiler*,struct sljit_compiler*,struct sljit_compiler*) ; 

sljit_s32 FUNC4(struct sljit_compiler *compiler, sljit_s32 type,
	sljit_s32 reg,
	sljit_s32 mem, sljit_sw memw)
{
	FUNC2(compiler);
	FUNC2(type);
	FUNC2(reg);
	FUNC2(mem);
	FUNC2(memw);

	FUNC1();
	FUNC0(FUNC3(compiler, type, reg, mem, memw));

	return SLJIT_ERR_UNSUPPORTED;
}