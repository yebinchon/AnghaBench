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
typedef  int /*<<< orphan*/  sljit_uw ;
typedef  int /*<<< orphan*/  sljit_s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 scalar_t__ FUNC1 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC2(struct sljit_compiler *compiler, sljit_uw inst)
{
	sljit_uw* ptr;

	ptr = (sljit_uw*)FUNC1(compiler, sizeof(sljit_uw));
	FUNC0(!ptr);
	compiler->size++;
	*ptr = inst;
	return SLJIT_SUCCESS;
}