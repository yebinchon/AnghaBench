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
typedef  double INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (double) ; 
 scalar_t__ FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static INT FUNC5(script_ctx_t *ctx, jsval_t v)
{
    double n;
    HRESULT hres;

    hres = FUNC4(ctx, v, &n);
    if(FUNC0(hres)) {
        FUNC1(ctx); /* FIXME: Move ignoring exceptions to to_primitive */
        return 0;
    }

    n = FUNC2(n);
    return FUNC3(n) ? n : 0;
}