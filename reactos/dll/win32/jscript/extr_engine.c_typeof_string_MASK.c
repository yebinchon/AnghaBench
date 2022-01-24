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
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSCLASS_FUNCTION ; 
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * booleanW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * functionW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * numberW ; 
 int /*<<< orphan*/ * objectW ; 
 int /*<<< orphan*/ * stringW ; 
 int /*<<< orphan*/ * undefinedW ; 

__attribute__((used)) static HRESULT FUNC8(jsval_t v, const WCHAR **ret)
{
    switch(FUNC7(v)) {
    case JSV_UNDEFINED:
        *ret = undefinedW;
        break;
    case JSV_NULL:
        *ret = objectW;
        break;
    case JSV_OBJECT: {
        jsdisp_t *dispex;

        if(FUNC2(v) && (dispex = FUNC4(FUNC2(v)))) {
            *ret = FUNC5(dispex, JSCLASS_FUNCTION) ? functionW : objectW;
            FUNC6(dispex);
        }else {
            *ret = objectW;
        }
        break;
    }
    case JSV_STRING:
        *ret = stringW;
        break;
    case JSV_NUMBER:
        *ret = numberW;
        break;
    case JSV_BOOL:
        *ret = booleanW;
        break;
    case JSV_VARIANT:
        FUNC0("unhandled variant %s\n", FUNC1(FUNC3(v)));
        return E_NOTIMPL;
    }

    return S_OK;
}