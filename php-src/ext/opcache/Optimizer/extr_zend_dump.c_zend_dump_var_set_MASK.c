#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ last_var; scalar_t__ T; } ;
typedef  TYPE_1__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_bitset ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IS_CV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(const zend_op_array *op_array, const char *name, zend_bitset set)
{
	int first = 1;
	uint32_t i;

	FUNC0(stderr, "    ; %s = {", name);
	for (i = 0; i < op_array->last_var + op_array->T; i++) {
		if (FUNC1(set, i)) {
			if (first) {
				first = 0;
			} else {
				FUNC0(stderr, ", ");
			}
			FUNC2(op_array, IS_CV, i);
		}
	}
	FUNC0(stderr, "}\n");
}