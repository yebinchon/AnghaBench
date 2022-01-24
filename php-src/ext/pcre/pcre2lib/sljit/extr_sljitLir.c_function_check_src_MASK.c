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
struct sljit_compiler {int scratches; int saveds; scalar_t__ logical_local_size; } ;
typedef  scalar_t__ sljit_sw ;
typedef  int sljit_s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int SLJIT_IMM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLJIT_SP ; 
 int FUNC2 (struct sljit_compiler*,int,scalar_t__) ; 

__attribute__((used)) static sljit_s32 FUNC3(struct sljit_compiler *compiler, sljit_s32 p, sljit_sw i)
{
	if (compiler->scratches == -1 || compiler->saveds == -1)
		return 0;

	if (FUNC0(p))
		return (i == 0);

	if (p == SLJIT_IMM)
		return 1;

	if (p == FUNC1(SLJIT_SP))
		return (i >= 0 && i < compiler->logical_local_size);

	return FUNC2(compiler, p, i);
}