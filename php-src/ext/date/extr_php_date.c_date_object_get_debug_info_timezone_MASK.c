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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ php_timezone_obj ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC6(zend_object *object, int *is_temp) /* {{{ */
{
	HashTable *ht, *props;
	zval zv;
	php_timezone_obj *tzobj;

	tzobj = FUNC1(object);
	props = FUNC5(object);

	*is_temp = 1;
	ht = FUNC3(props);

	FUNC0(&zv, tzobj->type);
	FUNC4(ht, "timezone_type", sizeof("timezone_type")-1, &zv);

	FUNC2(tzobj, &zv);
	FUNC4(ht, "timezone", sizeof("timezone")-1, &zv);

	return ht;
}