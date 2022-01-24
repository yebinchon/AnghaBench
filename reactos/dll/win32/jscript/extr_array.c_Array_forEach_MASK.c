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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsval_t value, args[3], res;
    jsdisp_t *jsthis;
    unsigned length, i;
    HRESULT hres;

    FUNC3("\n");

    hres = FUNC6(ctx, vthis, &jsthis, &length);
    if(FUNC1(hres))
        return hres;

    /* Fixme check IsCallable */
    if(!argc || !FUNC8(argv[0]) || !FUNC7(argv[0])) {
        FUNC2("Invalid arg %s\n", FUNC4(argc ? argv[0] : FUNC14()));
        return E_INVALIDARG;
    }

    if(argc > 1 && !FUNC9(argv[1])) {
        FUNC2("Unsupported context this %s\n", FUNC4(argv[1]));
        return E_NOTIMPL;
    }

    for(i = 0; i < length; i++) {
        hres = FUNC10(jsthis, i, &value);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FUNC1(hres))
            return hres;

        args[0] = value;
        args[1] = FUNC11(i);
        args[2] = FUNC12(jsthis);
        hres = FUNC5(ctx, FUNC7(argv[0]), NULL, DISPATCH_METHOD, FUNC0(args), args, &res);
        FUNC13(value);
        if(FUNC1(hres))
            return hres;
        FUNC13(res);
    }

    if(r) *r = FUNC14();
    return S_OK;
}