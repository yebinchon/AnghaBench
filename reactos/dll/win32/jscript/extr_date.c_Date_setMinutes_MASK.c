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
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 double FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,double,double,double) ; 
 double FUNC9 (double) ; 
 double FUNC10 (double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC14 (double,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    double t, min, sec, ms;
    HRESULT hres;

    FUNC1("\n");

    if(!(date = FUNC2(jsthis)))
        return FUNC11(ctx, JS_E_DATE_EXPECTED, NULL);

    if(!argc)
        return FUNC11(ctx, JS_E_MISSING_ARG, NULL);

    t = FUNC6(date->time, date);

    hres = FUNC13(ctx, argv[0], &min);
    if(FUNC0(hres))
        return hres;

    if(argc > 1) {
        hres = FUNC13(ctx, argv[1], &sec);
        if(FUNC0(hres))
            return hres;
    }else {
        sec = FUNC10(t);
    }

    if(argc > 2) {
        hres = FUNC13(ctx, argv[2], &ms);
        if(FUNC0(hres))
            return hres;
    }else {
        ms = FUNC9(t);
    }

    t = FUNC7(FUNC3(t), FUNC8(FUNC4(t),
                min, sec, ms));
    date->time = FUNC12(FUNC14(t, date));

    if(r)
        *r = FUNC5(date->time);
    return S_OK;
}