#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* var_info; } ;
typedef  TYPE_2__ zend_ssa ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  is_instanceof; scalar_t__ ce; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const zend_ssa *ssa, int ssa_var_num, uint32_t dump_flags)
{
	FUNC0(
		ssa->var_info[ssa_var_num].type,
		ssa->var_info[ssa_var_num].ce,
		ssa->var_info[ssa_var_num].ce ?
			ssa->var_info[ssa_var_num].is_instanceof : 0,
		dump_flags);
}