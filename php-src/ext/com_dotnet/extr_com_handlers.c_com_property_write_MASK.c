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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  VARIANT ;

/* Variables and functions */
 int DISPATCH_PROPERTYPUT ; 
 int DISPATCH_PROPERTYPUTREF ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static zval *FUNC7(zend_object *object, zend_string *member, zval *value, void **cache_slot)
{
	php_com_dotnet_object *obj;
	VARIANT v;

	obj = (php_com_dotnet_object*) object;

	if (FUNC0(&obj->v) == VT_DISPATCH) {
		FUNC2(&v);

		if (SUCCESS == FUNC5(obj, FUNC4(member), FUNC3(member),
				DISPATCH_PROPERTYPUT|DISPATCH_PROPERTYPUTREF, &v, 1, value, 0)) {
			FUNC1(&v);
		}
	} else {
		FUNC6(E_INVALIDARG, "this variant has no properties");
	}
	return value;
}