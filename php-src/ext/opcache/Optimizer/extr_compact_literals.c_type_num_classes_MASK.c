#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fn_flags; int num_args; TYPE_2__* arg_info; } ;
typedef  TYPE_1__ zend_op_array ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ zend_arg_info ;
typedef  int uint32_t ;
struct TYPE_7__ {size_t num_types; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_ACC_HAS_TYPE_HINTS ; 
 int ZEND_ACC_VARIADIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC5(const zend_op_array *op_array, uint32_t arg_num)
{
	zend_arg_info *arg_info;
	if (arg_num > 0) {
		if (!(op_array->fn_flags & ZEND_ACC_HAS_TYPE_HINTS)) {
			return 0;
		}
		if (FUNC0(arg_num <= op_array->num_args)) {
			arg_info = &op_array->arg_info[arg_num-1];
		} else if (FUNC1(op_array->fn_flags & ZEND_ACC_VARIADIC)) {
			arg_info = &op_array->arg_info[op_array->num_args];
		} else {
			return 0;
		}
	} else {
		arg_info = op_array->arg_info - 1;
	}

	if (FUNC2(arg_info->type)) {
		if (FUNC3(arg_info->type)) {
			return FUNC4(arg_info->type)->num_types;
		}
		return 1;
	}

	return 0;
}