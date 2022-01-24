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
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_4__ {TYPE_2__* caller_info; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ zend_func_info ;
struct TYPE_5__ {int recursive; struct TYPE_5__* next_caller; int /*<<< orphan*/ * caller_op_array; } ;
typedef  TYPE_2__ zend_call_info ;
typedef  int /*<<< orphan*/  zend_bitset ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(zend_op_array *root, zend_op_array *op_array, zend_bitset visited)
{
	zend_func_info *func_info;
	zend_call_info *call_info;
	int ret = 0;

	if (op_array == root) {
		return 1;
	}

	func_info = FUNC0(op_array);
	if (FUNC1(visited, func_info->num)) {
		return 0;
	}
	FUNC2(visited, func_info->num);
	call_info = func_info->caller_info;
	while (call_info) {
		if (FUNC3(root, call_info->caller_op_array, visited)) {
			call_info->recursive = 1;
			ret = 1;
		}
		call_info = call_info->next_caller;
	}
	return ret;
}