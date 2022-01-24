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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int WORD ;
typedef  double UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  INVOKE_FUNC 128 
 double NAN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r, jsdisp_t *constr) {
    jsdisp_t *err;
    UINT num = 0;
    jsstr_t *msg = NULL;
    HRESULT hres;

    if(argc) {
        double n;

        hres = FUNC8(ctx, argv[0], &n);
        if(FUNC0(hres)) /* FIXME: really? */
            n = NAN;
        if(FUNC3(n))
            hres = FUNC9(ctx, argv[0], &msg);
        if(FUNC0(hres))
            return hres;
        num = n;
    }

    if(!msg) {
        if(argc > 1) {
            hres = FUNC9(ctx, argv[1], &msg);
            if(FUNC0(hres))
                return hres;
        }else {
            msg = FUNC5();
        }
    }

    switch(flags) {
    case INVOKE_FUNC:
    case DISPATCH_CONSTRUCT:
        hres = FUNC2(ctx, constr, num, msg, &err);
        FUNC6(msg);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC7(err);
        else
            FUNC4(err);
        return S_OK;

    default:
        if(msg)
            FUNC6(msg);
        FUNC1("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }
}