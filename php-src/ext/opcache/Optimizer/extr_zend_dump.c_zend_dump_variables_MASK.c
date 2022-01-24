#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int last_var; } ;
typedef  TYPE_1__ zend_op_array ;

/* Variables and functions */
 int /*<<< orphan*/  IS_CV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 

void FUNC3(const zend_op_array *op_array)
{
	int j;

	FUNC0(stderr, "\nCV Variables for \"");
	FUNC1(op_array);
	FUNC0(stderr, "\"\n");
	for (j = 0; j < op_array->last_var; j++) {
		FUNC0(stderr, "    ");
		FUNC2(op_array, IS_CV, j);
		FUNC0(stderr, "\n");
	}
}