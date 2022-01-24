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
typedef  int /*<<< orphan*/  zval ;
typedef  size_t zend_ulong ;
typedef  size_t uint32_t ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  MYSQL_RES ;
typedef  TYPE_2__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MYSQLI_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zval *FUNC6(mysqli_object *obj, zval *retval)
{
	MYSQL_RES *p;
#if defined(MYSQLI_USE_MYSQLND)
	const size_t *ret;
#else
	const zend_ulong *ret;
#endif
	uint32_t field_count;

	FUNC0(MYSQLI_STATUS_VALID);
	p = (MYSQL_RES *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;
	field_count = FUNC5(p);
	if (!p || !field_count || !(ret = FUNC4(p))) {
		FUNC1(retval);
	} else {
		zend_ulong i;

		FUNC3(retval);

		for (i = 0; i < field_count; i++) {
			FUNC2(retval, i, ret[i]);
		}
	}
	return retval;
}