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
struct TYPE_3__ {int /*<<< orphan*/  code_page; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int DISPATCH_METHOD ; 
 int DISPATCH_PROPERTYGET ; 
 scalar_t__ DISP_E_BADPARAMCOUNT ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zval *FUNC11(zend_object *object, zend_string *member, int type, void **cahce_slot, zval *rv)
{
	php_com_dotnet_object *obj;
	VARIANT v;
	HRESULT res;

	FUNC5(rv);

	obj = (php_com_dotnet_object*) object;

	if (FUNC0(&obj->v) == VT_DISPATCH) {
		FUNC2(&v);

		res = FUNC7(obj, FUNC4(member), FUNC3(member),
				DISPATCH_METHOD|DISPATCH_PROPERTYGET, &v, 0, NULL, 1);

		if (res == SUCCESS) {
			FUNC10(rv, &v, obj->code_page);
			FUNC1(&v);
		} else if (res == DISP_E_BADPARAMCOUNT) {
			zval zv;

			FUNC6(&zv, member);
			FUNC8(object, rv, &zv);
		}
	} else {
		FUNC9(E_INVALIDARG, "this variant has no properties");
	}

	return rv;
}