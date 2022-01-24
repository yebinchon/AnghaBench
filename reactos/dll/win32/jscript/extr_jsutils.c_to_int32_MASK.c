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
typedef  scalar_t__ UINT32 ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 double FUNC1 (double,double const) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

HRESULT FUNC4(script_ctx_t *ctx, jsval_t v, INT *ret)
{
    double n;
    HRESULT hres;

    const double p32 = (double)0xffffffff + 1;

    hres = FUNC3(ctx, v, &n);
    if(FUNC0(hres))
        return hres;

    if(FUNC2(n))
        n = n > 0 ? FUNC1(n, p32) : -FUNC1(-n, p32);
    else
        n = 0;

    *ret = (UINT32)n;
    return S_OK;
}