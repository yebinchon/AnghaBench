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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  safearray; } ;
typedef  TYPE_1__ VBArrayInstance ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_VBARRAY_EXPECTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    jsdisp_t *array;
    jsval_t val;
    VARIANT *v;
    int i, size = 1, ubound, lbound;
    HRESULT hres;

    FUNC7("\n");

    vbarray = FUNC15(vthis);
    if(!vbarray)
        return FUNC13(ctx, JS_E_VBARRAY_EXPECTED, NULL);

    for(i=1; i<=FUNC3(vbarray->safearray); i++) {
        FUNC4(vbarray->safearray, i, &lbound);
        FUNC5(vbarray->safearray, i, &ubound);
        size *= ubound-lbound+1;
    }

    hres = FUNC2(vbarray->safearray, (void**)&v);
    if(FUNC0(hres))
        return hres;

    hres = FUNC8(ctx, 0, &array);
    if(FUNC0(hres)) {
        FUNC6(vbarray->safearray);
        return hres;
    }

    for(i=0; i<size; i++) {
        hres = FUNC14(v, &val);
        if(FUNC1(hres)) {
            hres = FUNC9(array, i, val);
            FUNC12(val);
        }
        if(FUNC0(hres)) {
            FUNC6(vbarray->safearray);
            FUNC10(array);
            return hres;
        }
        v++;
    }

    FUNC6(vbarray->safearray);

    if(r)
        *r = FUNC11(array);
    else
        FUNC10(array);
    return S_OK;
}