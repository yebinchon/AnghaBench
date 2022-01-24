#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {scalar_t__ id_of_name_cache; scalar_t__ method_cache; int /*<<< orphan*/  v; int /*<<< orphan*/ * sink_dispatch; int /*<<< orphan*/ * typeinfo; } ;
typedef  TYPE_1__ php_com_dotnet_object ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zend_object *object)
{
	php_com_dotnet_object *obj = (php_com_dotnet_object*)object;

	if (obj->typeinfo) {
		FUNC2(obj->typeinfo);
		obj->typeinfo = NULL;
	}

	if (obj->sink_dispatch) {
		FUNC4(obj, FALSE);
		FUNC1(obj->sink_dispatch);
		obj->sink_dispatch = NULL;
	}

	FUNC3(&obj->v);

	if (obj->method_cache) {
		FUNC5(obj->method_cache);
		FUNC0(obj->method_cache);
	}
	if (obj->id_of_name_cache) {
		FUNC5(obj->id_of_name_cache);
		FUNC0(obj->id_of_name_cache);
	}

	FUNC6(object);
}