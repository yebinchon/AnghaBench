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
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  safearray; } ;
typedef  TYPE_1__ VBArrayInstance ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DISP_E_BADINDEX ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  JS_E_SUBSCRIPT_OUT_OF_RANGE ; 
 int /*<<< orphan*/  JS_E_VBARRAY_EXPECTED ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    int i, *indexes;
    VARIANT out;
    HRESULT hres;

    FUNC3("\n");

    vbarray = FUNC11(vthis);
    if(!vbarray)
        return FUNC8(ctx, JS_E_VBARRAY_EXPECTED, NULL);

    if(argc < FUNC1(vbarray->safearray))
        return FUNC7(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, NULL);

    indexes = FUNC5(sizeof(int)*argc);
    if(!indexes)
        return E_OUTOFMEMORY;

    for(i=0; i<argc; i++) {
        hres = FUNC9(ctx, argv[i], indexes+i);
        if(FUNC0(hres)) {
            FUNC6(indexes);
            return hres;
        }
    }

    hres = FUNC2(vbarray->safearray, indexes, (void*)&out);
    FUNC6(indexes);
    if(hres == DISP_E_BADINDEX)
        return FUNC7(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, NULL);
    else if(FUNC0(hres))
        return hres;

    if(r) {
        hres = FUNC10(&out, r);
        FUNC4(&out);
    }
    return hres;
}