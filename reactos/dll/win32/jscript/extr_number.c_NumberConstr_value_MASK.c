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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  INVOKE_FUNC 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    double n;
    HRESULT hres;

    FUNC2("\n");

    switch(flags) {
    case INVOKE_FUNC:
        if(!argc) {
            if(r)
                *r = FUNC4(0);
            return S_OK;
        }

        hres = FUNC6(ctx, argv[0], &n);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC4(n);
        break;

    case DISPATCH_CONSTRUCT: {
        jsdisp_t *obj;

        if(argc) {
            hres = FUNC6(ctx, argv[0], &n);
            if(FUNC0(hres))
                return hres;
        }else {
            n = 0;
        }

        hres = FUNC3(ctx, n, &obj);
        if(FUNC0(hres))
            return hres;

        *r = FUNC5(obj);
        break;
    }
    default:
        FUNC1("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}