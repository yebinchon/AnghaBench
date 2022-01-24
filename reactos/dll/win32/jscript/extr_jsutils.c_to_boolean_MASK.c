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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

HRESULT FUNC11(jsval_t val, BOOL *ret)
{
    switch(FUNC10(val)) {
    case JSV_UNDEFINED:
    case JSV_NULL:
        *ret = FALSE;
        return S_OK;
    case JSV_OBJECT:
        *ret = FUNC5(val) != NULL;
        return S_OK;
    case JSV_STRING:
        *ret = FUNC9(FUNC6(val)) != 0;
        return S_OK;
    case JSV_NUMBER:
        *ret = !FUNC8(FUNC4(val)) && FUNC4(val);
        return S_OK;
    case JSV_BOOL:
        *ret = FUNC3(val);
        return S_OK;
    case JSV_VARIANT:
        FUNC0("unimplemented for variant %s\n", FUNC2(FUNC7(val)));
        return E_NOTIMPL;
    }

    FUNC1(0);
    return E_FAIL;
}