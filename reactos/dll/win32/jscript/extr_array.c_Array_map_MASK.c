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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static HRESULT FUNC18(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    IDispatch *context_this = NULL, *callback;
    jsval_t callback_args[3], mapped_value;
    jsdisp_t *jsthis, *array;
    DWORD length, k;
    HRESULT hres;

    FUNC3("\n");

    hres = FUNC7(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres)) {
        FUNC1("Could not get length\n");
        return hres;
    }

    /* Fixme check IsCallable */
    if(!argc || !FUNC9(argv[0]) || !FUNC8(argv[0])) {
        FUNC1("Invalid arg %s\n", FUNC5(argc ? argv[0] : FUNC17()));
        return E_INVALIDARG;
    }
    callback = FUNC8(argv[0]);

    if(argc > 1) {
        if(FUNC9(argv[1]) && FUNC8(argv[1])) {
            context_this = FUNC8(argv[1]);
        }else if(!FUNC10(argv[1])) {
            FUNC1("Unsupported context this %s\n", FUNC5(argv[1]));
            return E_NOTIMPL;
        }
    }

    hres = FUNC4(ctx, length, &array);
    if(FUNC0(hres))
        return hres;

    for(k = 0; k < length; k++) {
        hres = FUNC11(jsthis, k, &callback_args[0]);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FUNC0(hres))
            break;

        callback_args[1] = FUNC14(k);
        callback_args[2] = FUNC15(jsthis);
        hres = FUNC6(ctx, callback, context_this, DISPATCH_METHOD, 3, callback_args, &mapped_value);
        FUNC16(callback_args[0]);
        if(FUNC0(hres))
            break;

        hres = FUNC12(array, k, mapped_value);
        if(FUNC0(hres))
            break;
    }

    if(FUNC2(hres) && r)
        *r = FUNC15(array);
    else
        FUNC13(array);
    return hres;
}