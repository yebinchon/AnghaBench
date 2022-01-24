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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (double,double,double,double) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, unsigned argc, jsval_t *argv, double *ret)
{
    double year, month, vdate, hours, minutes, seconds, ms;
    HRESULT hres;

    FUNC1("\n");

    if(argc) {
        hres = FUNC6(ctx, argv[0], &year);
        if(FUNC0(hres))
            return hres;
        if(0 <= year && year <= 99)
            year += 1900;
    }else {
        year = 1900;
    }

    if(argc>1) {
        hres = FUNC6(ctx, argv[1], &month);
        if(FUNC0(hres))
            return hres;
    }else {
        month = 0;
    }

    if(argc>2) {
        hres = FUNC6(ctx, argv[2], &vdate);
        if(FUNC0(hres))
            return hres;
    }else {
        vdate = 1;
    }

    if(argc>3) {
        hres = FUNC6(ctx, argv[3], &hours);
        if(FUNC0(hres))
            return hres;
    }else {
        hours = 0;
    }

    if(argc>4) {
        hres = FUNC6(ctx, argv[4], &minutes);
        if(FUNC0(hres))
            return hres;
    }else {
        minutes = 0;
    }

    if(argc>5) {
        hres = FUNC6(ctx, argv[5], &seconds);
        if(FUNC0(hres))
            return hres;
    }else {
        seconds = 0;
    }

    if(argc>6) {
        hres = FUNC6(ctx, argv[6], &ms);
        if(FUNC0(hres))
            return hres;
    } else {
        ms = 0;
    }

    *ret = FUNC5(FUNC2(FUNC3(year, month, vdate),
            FUNC4(hours, minutes,seconds, ms)));
    return S_OK;
}