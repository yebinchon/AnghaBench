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
struct TYPE_5__ {double time; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DateInstance ;
typedef  double DOUBLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  JS_E_MISSING_ARG ; 
 double NAN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (double) ; 
 scalar_t__ FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 double FUNC7 (double,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    DOUBLE t, year;
    HRESULT hres;

    FUNC1("\n");

    if(!(date = FUNC3(jsthis)))
        return FUNC11(ctx, JS_E_DATE_EXPECTED, NULL);

    if(!argc)
        return FUNC11(ctx, JS_E_MISSING_ARG, NULL);

    t = FUNC7(date->time, date);

    hres = FUNC14(ctx, argv[0], &year);
    if(FUNC0(hres))
        return hres;

    if(FUNC5(year)) {
        date->time = year;
        if(r)
            *r = FUNC6(NAN);
        return S_OK;
    }

    year = year >= 0.0 ? FUNC4(year) : -FUNC4(-year);
    if(-1.0 < year && year < 100.0)
        year += 1900.0;

    date->time = FUNC12(FUNC15(FUNC8(FUNC9(year, FUNC10(t), FUNC2(t)), FUNC13(t)), date));

    if(r)
        *r = FUNC6(date->time);
    return S_OK;
}