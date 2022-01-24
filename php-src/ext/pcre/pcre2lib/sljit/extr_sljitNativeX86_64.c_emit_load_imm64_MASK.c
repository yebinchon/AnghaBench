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
typedef  size_t sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MOV_r_i32 ; 
 int REX_B ; 
 int REX_W ; 
 size_t SLJIT_SUCCESS ; 
 scalar_t__ FUNC2 (struct sljit_compiler*,int) ; 
 int* reg_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sljit_s32 FUNC4(struct sljit_compiler *compiler, sljit_s32 reg, sljit_sw imm)
{
	sljit_u8 *inst;

	inst = (sljit_u8*)FUNC2(compiler, 1 + 2 + sizeof(sljit_sw));
	FUNC0(!inst);
	FUNC1(2 + sizeof(sljit_sw));
	*inst++ = REX_W | ((reg_map[reg] <= 7) ? 0 : REX_B);
	*inst++ = MOV_r_i32 + (reg_map[reg] & 0x7);
	FUNC3(inst, imm);
	return SLJIT_SUCCESS;
}