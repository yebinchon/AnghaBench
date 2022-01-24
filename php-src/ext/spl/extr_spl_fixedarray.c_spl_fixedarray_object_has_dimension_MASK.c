#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int zend_bool ;
struct TYPE_5__ {int /*<<< orphan*/  ce; } ;
struct TYPE_6__ {scalar_t__ fptr_offset_has; TYPE_1__ std; } ;
typedef  TYPE_2__ spl_fixedarray_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(zend_object *object, zval *offset, int check_empty) /* {{{ */
{
	spl_fixedarray_object *intern;

	intern = FUNC1(object);

	if (intern->fptr_offset_has) {
		zval rv;
		zend_bool result;

		FUNC0(offset);
		FUNC3(object, intern->std.ce, &intern->fptr_offset_has, "offsetExists", &rv, offset);
		FUNC5(offset);
		result = FUNC4(&rv);
		FUNC5(&rv);
		return result;
	}

	return FUNC2(intern, offset, check_empty);
}