#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_5__ {int /*<<< orphan*/  time; } ;
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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 double FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (double,double,double) ; 
 double FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC13 (double,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    double t, year, month, ddate;
    HRESULT hres;

    FUNC1("\n");

    if(!(date = FUNC3(jsthis)))
        return FUNC9(ctx, JS_E_DATE_EXPECTED, NULL);

    if(!argc)
        return FUNC9(ctx, JS_E_MISSING_ARG, NULL);

    t = FUNC5(date->time, date);

    hres = FUNC12(ctx, argv[0], &year);
    if(FUNC0(hres))
        return hres;

    if(argc > 1) {
        hres = FUNC12(ctx, argv[1], &month);
        if(FUNC0(hres))
            return hres;
    }else {
        month = FUNC8(t);
    }

    if(argc > 2) {
        hres = FUNC12(ctx, argv[2], &ddate);
        if(FUNC0(hres))
            return hres;
    }else {
        ddate = FUNC2(t);
    }

    t = FUNC6(FUNC7(year, month, ddate), FUNC11(t));
    date->time = FUNC10(FUNC13(t, date));

    if(r)
        *r = FUNC4(date->time);
    return S_OK;
}