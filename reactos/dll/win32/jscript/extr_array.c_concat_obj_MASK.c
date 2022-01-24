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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  JSCLASS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(jsdisp_t *array, IDispatch *obj, DWORD *len)
{
    jsdisp_t *jsobj;
    HRESULT hres;

    jsobj = FUNC2(obj);
    if(jsobj) {
        if(FUNC3(jsobj, JSCLASS_ARRAY)) {
            hres = FUNC1(array, FUNC0(jsobj), len);
            FUNC5(jsobj);
            return hres;
        }
        FUNC5(jsobj);
    }

    return FUNC4(array, (*len)++, FUNC6(obj));
}