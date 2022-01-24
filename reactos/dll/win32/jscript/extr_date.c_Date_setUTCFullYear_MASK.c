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
struct TYPE_3__ {double time; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DateInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  JS_E_MISSING_ARG ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 double FUNC2 (double) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 double FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double,double,double) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    double t, year, month, ddate;
    HRESULT hres;

    FUNC1("\n");

    if(!(date = FUNC3(jsthis)))
        return FUNC8(ctx, JS_E_DATE_EXPECTED, NULL);

    if(!argc)
        return FUNC8(ctx, JS_E_MISSING_ARG, NULL);

    t = date->time;

    hres = FUNC11(ctx, argv[0], &year);
    if(FUNC0(hres))
        return hres;

    if(argc > 1) {
        hres = FUNC11(ctx, argv[1], &month);
        if(FUNC0(hres))
            return hres;
    }else {
        month = FUNC7(t);
    }

    if(argc > 2) {
        hres = FUNC11(ctx, argv[2], &ddate);
        if(FUNC0(hres))
            return hres;
    }else {
        ddate = FUNC2(t);
    }

    t = FUNC5(FUNC6(year, month, ddate), FUNC10(t));
    date->time = FUNC9(t);

    if(r)
        *r = FUNC4(date->time);
    return S_OK;
}