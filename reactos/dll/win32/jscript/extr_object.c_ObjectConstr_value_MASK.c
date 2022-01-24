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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
#define  DISPATCH_METHOD 128 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC13(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    HRESULT hres;

    FUNC3("\n");

    switch(flags) {
    case DISPATCH_METHOD:
    case DISPATCH_CONSTRUCT: {
        jsdisp_t *obj;

        if(argc) {
            if(!FUNC8(argv[0]) && !FUNC6(argv[0]) && (!FUNC7(argv[0]) || FUNC5(argv[0]))) {
                IDispatch *disp;

                hres = FUNC12(ctx, argv[0], &disp);
                if(FUNC0(hres))
                    return hres;

                if(r)
                    *r = FUNC10(disp);
                else
                    FUNC2(disp);
                return S_OK;
            }
        }

        hres = FUNC4(ctx, NULL, &obj);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC11(obj);
        else
            FUNC9(obj);
        break;
    }

    default:
        FUNC1("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}