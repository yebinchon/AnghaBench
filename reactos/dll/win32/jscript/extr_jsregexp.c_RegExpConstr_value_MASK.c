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
#define  DISPATCH_METHOD 128 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  JSCLASS_REGEXP ; 
 int /*<<< orphan*/  JS_E_REGEXP_SYNTAX ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FUNC2("\n");

    switch(flags) {
    case DISPATCH_METHOD:
        if(argc) {
            if(FUNC7(argv[0])) {
                jsdisp_t *jsdisp = FUNC5(FUNC4(argv[0]));
                if(jsdisp) {
                    if(FUNC6(jsdisp, JSCLASS_REGEXP)) {
                        if(argc > 1 && !FUNC8(argv[1])) {
                            FUNC9(jsdisp);
                            return FUNC11(ctx, JS_E_REGEXP_SYNTAX, NULL);
                        }

                        if(r)
                            *r = FUNC10(jsdisp);
                        else
                            FUNC9(jsdisp);
                        return S_OK;
                    }
                    FUNC9(jsdisp);
                }
            }
        }
        /* fall through */
    case DISPATCH_CONSTRUCT: {
        jsdisp_t *ret;
        HRESULT hres;

        if(!argc) {
            FUNC1("no args\n");
            return E_NOTIMPL;
        }

        hres = FUNC3(ctx, argv[0], argc > 1 ? argv+1 : NULL, &ret);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC10(ret);
        else
            FUNC9(ret);
        return S_OK;
    }
    default:
        FUNC1("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}