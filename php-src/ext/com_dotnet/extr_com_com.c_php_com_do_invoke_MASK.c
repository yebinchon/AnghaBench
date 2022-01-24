#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  php_com_dotnet_object ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ ,char*,char*,char*) ; 

int FUNC8(php_com_dotnet_object *obj, char *name, size_t namelen,
		WORD flags,	VARIANT *v, int nargs, zval *args, int allow_noarg)
{
	DISPID dispid;
	HRESULT hr;
	char *msg = NULL;

	hr = FUNC3(obj, name, namelen, &dispid);

	if (FUNC0(hr)) {
		char *winerr = FUNC6(hr);
		FUNC7(&msg, 0, "Unable to lookup `%s': %s", name, winerr);
		FUNC5(winerr);
		FUNC4(hr, msg);
		FUNC1(msg);
		return FAILURE;
	}

	return FUNC2(obj, dispid, flags, v, nargs, args, 0, allow_noarg);
}