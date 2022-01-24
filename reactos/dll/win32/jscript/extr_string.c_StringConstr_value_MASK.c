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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  INVOKE_FUNC 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    HRESULT hres;

    FUNC3("\n");

    switch(flags) {
    case INVOKE_FUNC: {
        jsstr_t *str;

        if(argc) {
            hres = FUNC9(ctx, argv[0], &str);
            if(FUNC0(hres))
                return hres;
        }else {
            str = FUNC5();
        }

        *r = FUNC8(str);
        break;
    }
    case DISPATCH_CONSTRUCT: {
        jsstr_t *str;
        jsdisp_t *ret;

        if(argc) {
            hres = FUNC9(ctx, argv[0], &str);
            if(FUNC0(hres))
                return hres;
        }else {
            str = FUNC5();
        }

        hres = FUNC4(ctx, str, &ret);
        if (FUNC2(hres)) *r = FUNC7(ret);
        FUNC6(str);
        return hres;
    }

    default:
        FUNC1("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}