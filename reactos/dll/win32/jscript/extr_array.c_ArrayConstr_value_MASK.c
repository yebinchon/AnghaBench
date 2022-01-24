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
typedef  unsigned int DWORD ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
#define  DISPATCH_METHOD 128 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  JS_E_INVALID_LENGTH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ **) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *obj;
    DWORD i;
    HRESULT hres;

    FUNC2("\n");

    switch(flags) {
    case DISPATCH_METHOD:
    case DISPATCH_CONSTRUCT: {
        if(argc == 1 && FUNC6(argv[0])) {
            double n = FUNC4(argv[0]);

            if(n < 0 || !FUNC5(n))
                return FUNC10(ctx, JS_E_INVALID_LENGTH, NULL);

            hres = FUNC3(ctx, n, &obj);
            if(FUNC0(hres))
                return hres;

            *r = FUNC9(obj);
            return S_OK;
        }

        hres = FUNC3(ctx, argc, &obj);
        if(FUNC0(hres))
            return hres;

        for(i=0; i < argc; i++) {
            hres = FUNC7(obj, i, argv[i]);
            if(FUNC0(hres))
                break;
        }
        if(FUNC0(hres)) {
            FUNC8(obj);
            return hres;
        }

        *r = FUNC9(obj);
        break;
    }
    default:
        FUNC1("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}