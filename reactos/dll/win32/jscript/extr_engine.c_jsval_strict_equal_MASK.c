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
typedef  int jsval_type_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

HRESULT FUNC10(jsval_t lval, jsval_t rval, BOOL *ret)
{
    jsval_type_t type = FUNC9(lval);

    FUNC1("\n");

    if(type != FUNC9(rval)) {
        if(FUNC7(lval))
            *ret = FUNC7(rval);
        else
            *ret = FALSE;
        return S_OK;
    }

    switch(type) {
    case JSV_UNDEFINED:
    case JSV_NULL:
        *ret = TRUE;
        break;
    case JSV_OBJECT:
        return FUNC2(FUNC5(lval), FUNC5(rval), ret);
    case JSV_STRING:
        *ret = FUNC8(FUNC6(lval), FUNC6(rval));
        break;
    case JSV_NUMBER:
        *ret = FUNC4(lval) == FUNC4(rval);
        break;
    case JSV_BOOL:
        *ret = !FUNC3(lval) == !FUNC3(rval);
        break;
    case JSV_VARIANT:
        FUNC0("VARIANT not implemented\n");
        return E_NOTIMPL;
    }

    return S_OK;
}