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
struct sljit_compiler {scalar_t__ scratches; int /*<<< orphan*/  verbose; } ;
typedef  scalar_t__ sljit_s32 ;

/* Variables and functions */
 scalar_t__ SLJIT_NUMBER_OF_REGISTERS ; 
 scalar_t__ SLJIT_R0 ; 
 scalar_t__ SLJIT_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(struct sljit_compiler *compiler, sljit_s32 r)
{
	if (r < (SLJIT_R0 + compiler->scratches))
		FUNC0(compiler->verbose, "r%ld", r - SLJIT_R0);
	else if (r != SLJIT_SP)
		FUNC0(compiler->verbose, "s%ld", SLJIT_NUMBER_OF_REGISTERS - r);
	else
		FUNC0(compiler->verbose, "sp");
}