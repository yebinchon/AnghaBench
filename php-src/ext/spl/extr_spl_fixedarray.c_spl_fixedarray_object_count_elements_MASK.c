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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int /*<<< orphan*/  ce; } ;
struct TYPE_7__ {TYPE_1__ array; scalar_t__ fptr_count; TYPE_2__ std; } ;
typedef  TYPE_3__ spl_fixedarray_object ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zend_object *object, zend_long *count) /* {{{ */
{
	spl_fixedarray_object *intern;

	intern = FUNC1(object);
	if (intern->fptr_count) {
		zval rv;
		FUNC2(object, intern->std.ce, &intern->fptr_count, "count", &rv);
		if (!FUNC0(rv)) {
			*count = FUNC3(&rv);
			FUNC4(&rv);
		} else {
			*count = 0;
		}
	} else {
		*count = intern->array.size;
	}
	return SUCCESS;
}