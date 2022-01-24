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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  VT_BOOL 143 
#define  VT_BSTR 142 
 int VT_BYREF ; 
#define  VT_DISPATCH 141 
#define  VT_EMPTY 140 
#define  VT_I1 139 
#define  VT_I2 138 
#define  VT_I4 137 
#define  VT_INT 136 
#define  VT_NULL 135 
#define  VT_R4 134 
#define  VT_R8 133 
#define  VT_UI1 132 
#define  VT_UI2 131 
#define  VT_UI4 130 
#define  VT_UI8 129 
#define  VT_UNKNOWN 128 
 int VT_VARIANT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC29(VARIANT *var, jsval_t *r)
{
    if(FUNC19(var) == (VT_VARIANT|VT_BYREF))
        var = FUNC18(var);

    switch(FUNC19(var)) {
    case VT_EMPTY:
        *r = FUNC27();
        return S_OK;
    case VT_NULL:
        *r = FUNC24();
        return S_OK;
    case VT_BOOL:
        *r = FUNC22(FUNC4(var));
        return S_OK;
    case VT_I4:
        *r = FUNC25(FUNC9(var));
        return S_OK;
    case VT_R8:
        *r = FUNC25(FUNC12(var));
        return S_OK;
    case VT_BSTR: {
        jsstr_t *str;

        if(FUNC5(var)) {
            str = FUNC20(FUNC5(var), FUNC3(FUNC5(var)));
            if(!str)
                return E_OUTOFMEMORY;
        }else {
            str = FUNC21();
        }

        *r = FUNC26(str);
        return S_OK;
    }
    case VT_DISPATCH: {
        if(FUNC6(var))
            FUNC0(FUNC6(var));
        *r = FUNC23(FUNC6(var));
        return S_OK;
    }
    case VT_I1:
        *r = FUNC25(FUNC7(var));
        return S_OK;
    case VT_UI1:
        *r = FUNC25(FUNC13(var));
        return S_OK;
    case VT_I2:
        *r = FUNC25(FUNC8(var));
        return S_OK;
    case VT_UI2:
        *r = FUNC25(FUNC14(var));
        return S_OK;
    case VT_INT:
        *r = FUNC25(FUNC10(var));
        return S_OK;
    case VT_UI4:
        *r = FUNC25(FUNC15(var));
        return S_OK;
    case VT_UI8:
        /*
         * Native doesn't support VT_UI8 here, but it's needed for IE9+ APIs
         * (native IE9 doesn't use jscript.dll for JavaScript).
         */
        *r = FUNC25(FUNC16(var));
        return S_OK;
    case VT_R4:
        *r = FUNC25(FUNC11(var));
        return S_OK;
    case VT_UNKNOWN:
        if(FUNC17(var)) {
            IDispatch *disp;
            HRESULT hres;

            hres = FUNC1(FUNC17(var), &IID_IDispatch, (void**)&disp);
            if(FUNC2(hres)) {
                *r = FUNC23(disp);
                return S_OK;
            }
        }else {
            *r = FUNC23(NULL);
            return S_OK;
        }
        /* fall through */
    default:
        return FUNC28(r, var);
    }
}