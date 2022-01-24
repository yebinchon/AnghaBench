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
struct TYPE_3__ {scalar_t__ id_of_name_cache; int /*<<< orphan*/  v; int /*<<< orphan*/ * typeinfo; int /*<<< orphan*/  code_page; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*,size_t,int /*<<< orphan*/ *) ; 

HRESULT FUNC15(php_com_dotnet_object *obj, char *name,
		size_t namelen, DISPID *dispid)
{
	OLECHAR *olename;
	HRESULT hr;
	zval *tmp;

	if (namelen == -1) {
		namelen = FUNC11(name);
	}

	if (obj->id_of_name_cache && NULL != (tmp = FUNC13(obj->id_of_name_cache, name, namelen))) {
		*dispid = (DISPID)FUNC8(tmp);
		return S_OK;
	}

	olename = FUNC10(name, namelen, obj->code_page);

	if (obj->typeinfo) {
		hr = FUNC3(obj->typeinfo, &olename, 1, dispid);
		if (FUNC1(hr)) {
			hr = FUNC2(FUNC6(&obj->v), &IID_NULL, &olename, 1, LOCALE_SYSTEM_DEFAULT, dispid);
			if (FUNC5(hr)) {
				/* fall back on IDispatch direct */
				FUNC4(obj->typeinfo);
				obj->typeinfo = NULL;
			}
		}
	} else {
		hr = FUNC2(FUNC6(&obj->v), &IID_NULL, &olename, 1, LOCALE_SYSTEM_DEFAULT, dispid);
	}
	FUNC9(olename);

	if (FUNC5(hr)) {
		zval tmp;

		/* cache the mapping */
		if (!obj->id_of_name_cache) {
			FUNC0(obj->id_of_name_cache);
			FUNC12(obj->id_of_name_cache, 2, NULL, NULL, 0);
		}
		FUNC7(&tmp, *dispid);
		FUNC14(obj->id_of_name_cache, name, namelen, &tmp);
	}

	return hr;
}