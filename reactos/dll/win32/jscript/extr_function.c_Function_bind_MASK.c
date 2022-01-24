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
typedef  int /*<<< orphan*/  FunctionInstance ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  JS_E_FUNCTION_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;
    jsdisp_t *new_function;
    HRESULT hres;

    FUNC2("\n");

    if(!(function = FUNC5(jsthis)))
        return FUNC10(ctx, JS_E_FUNCTION_EXPECTED, NULL);

    if(argc < 1) {
        FUNC1("no this argument\n");
        return E_NOTIMPL;
    }

    if(!FUNC7(argv[0]) || !FUNC6(argv[0])) {
        FUNC1("%s is not an object instance\n", FUNC4(argv[0]));
        return E_NOTIMPL;
    }

    hres = FUNC3(ctx, function, FUNC6(argv[0]), argc - 1, argv + 1, &new_function);
    if(FUNC0(hres))
        return hres;

    if(r)
        *r = FUNC9(new_function);
    else
        FUNC8(new_function);
    return S_OK;
}