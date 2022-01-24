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
typedef  int zend_long ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
typedef  scalar_t__ my_ulonglong ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ MY_STMT ;
typedef  TYPE_3__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MYSQLI_LLU_SPEC ; 
 int /*<<< orphan*/  MYSQLI_STATUS_VALID ; 
 scalar_t__ ZEND_LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static zval *FUNC6(mysqli_object *obj, zval *retval)
{
	MY_STMT *p;
	my_ulonglong rc;

	FUNC0(MYSQLI_STATUS_VALID);

 	p = (MY_STMT *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

	if (!p) {
		FUNC3(retval);
	} else {
		rc = FUNC4(p->stmt);

		if (rc == (my_ulonglong) -1) {
			FUNC1(retval, -1);
			return retval;
		}

		if (rc < ZEND_LONG_MAX) {
			FUNC1(retval, (zend_long) rc);
		} else {
			FUNC2(retval, FUNC5(0, MYSQLI_LLU_SPEC, rc));
		}
	}
	return retval;
}