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
 int /*<<< orphan*/  JS_E_FRACTION_DIGITS_OUT_OF_RANGE ; 
 int /*<<< orphan*/  JS_E_NUMBER_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    NumberInstance *number;
    DOUBLE val;
    INT prec = 0;
    jsstr_t *str;
    HRESULT hres;

    FUNC1("\n");

    if(!(number = FUNC6(jsthis)))
        return FUNC9(ctx, JS_E_NUMBER_EXPECTED, NULL);

    if(argc) {
        hres = FUNC10(ctx, argv[0], &prec);
        if(FUNC0(hres))
            return hres;

        if(prec<0 || prec>20)
            return FUNC8(ctx, JS_E_FRACTION_DIGITS_OUT_OF_RANGE, NULL);
    }

    val = number->value;
    if(!FUNC2(val)) {
        hres = FUNC11(ctx, FUNC4(val), &str);
        if(FUNC0(hres))
            return hres;
    }else {
        if(!prec)
            prec--;
        str = FUNC7(val, prec);
        if(!str)
            return E_OUTOFMEMORY;
    }

    if(r)
        *r = FUNC5(str);
    else
        FUNC3(str);
    return S_OK;
}