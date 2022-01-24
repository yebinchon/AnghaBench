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
struct sljit_compiler {int /*<<< orphan*/  size; } ;
typedef  int sljit_u16 ;
typedef  int /*<<< orphan*/  sljit_s32 ;
typedef  int sljit_ins ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 scalar_t__ FUNC2 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC3(struct sljit_compiler *compiler, sljit_ins inst)
{
	sljit_u16 *ptr;
	FUNC1(!(inst & 0xffff0000));

	ptr = (sljit_u16*)FUNC2(compiler, sizeof(sljit_u16));
	FUNC0(!ptr);
	*ptr = inst;
	compiler->size++;
	return SLJIT_SUCCESS;
}