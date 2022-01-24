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
typedef  int /*<<< orphan*/  sljit_u8 ;
typedef  int /*<<< orphan*/  sljit_sw ;
typedef  int /*<<< orphan*/  sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 scalar_t__ FUNC2 (struct sljit_compiler*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sljit_s32 FUNC4(struct sljit_compiler *compiler, sljit_u8 opcode, sljit_sw imm)
{
	sljit_u8 *inst;

	inst = (sljit_u8*)FUNC2(compiler, 1 + 1 + sizeof(sljit_sw));
	FUNC0(!inst);
	FUNC1(1 + sizeof(sljit_sw));
	*inst++ = opcode;
	FUNC3(inst, imm);
	return SLJIT_SUCCESS;
}