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
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ MY_STMT ;
typedef  TYPE_3__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MYSQLI_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC4(mysqli_object *obj, zval *retval)
{
	MY_STMT *p;

	FUNC0(MYSQLI_STATUS_VALID);

 	p = (MY_STMT*)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;

	if (!p) {
		FUNC2(retval);
	} else {
		FUNC1(retval, FUNC3(p->stmt));
	}
	return retval;
}