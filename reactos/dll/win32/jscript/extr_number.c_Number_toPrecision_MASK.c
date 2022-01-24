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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ NumberInstance ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_NUMBER_EXPECTED ; 
 int /*<<< orphan*/  JS_E_PRECISION_OUT_OF_RANGE ; 
 int /*<<< orphan*/  S_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    NumberInstance *number;
    INT prec = 0, size;
    jsstr_t *str;
    DOUBLE val;
    HRESULT hres;

    if(!(number = FUNC7(jsthis)))
        return FUNC11(ctx, JS_E_NUMBER_EXPECTED, NULL);

    if(argc) {
        hres = FUNC12(ctx, argv[0], &prec);
        if(FUNC0(hres))
            return hres;

        if(prec<1 || prec>21)
            return FUNC10(ctx, JS_E_PRECISION_OUT_OF_RANGE, NULL);
    }

    val = number->value;
    if(!FUNC2(val) || !prec) {
        hres = FUNC13(ctx, FUNC4(val), &str);
        if(FUNC0(hres))
            return hres;
    }else {
        if(val != 0)
            size = FUNC1(FUNC6(val>0 ? val : -val)) + 1;
        else
            size = 1;

        if(size > prec)
            str = FUNC8(val, prec-1);
        else
            str = FUNC9(val, prec-size);
        if(!str)
            return E_OUTOFMEMORY;
    }

    if(r)
        *r = FUNC5(str);
    else
        FUNC3(str);
    return S_OK;
}