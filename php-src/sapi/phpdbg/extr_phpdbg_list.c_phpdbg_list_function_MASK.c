#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ line_start; scalar_t__ line_end; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ zend_op_array ;
struct TYPE_5__ {int /*<<< orphan*/  function_name; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ common; } ;
typedef  TYPE_3__ zend_function ;

/* Variables and functions */
 scalar_t__ ZEND_USER_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(const zend_function *fbc) /* {{{ */
{
	const zend_op_array *ops;

	if (fbc->type != ZEND_USER_FUNCTION) {
		FUNC1("list", "type=\"internalfunction\" function=\"%s\"", "The function requested (%s) is not user defined", FUNC0(fbc->common.function_name));
		return;
	}

	ops = (zend_op_array *) fbc;

	FUNC2(ops->filename, ops->line_end - ops->line_start + 1, ops->line_start, 0);
}