#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  scope_chain_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_6__ {int /*<<< orphan*/  param_cnt; } ;
typedef  TYPE_2__ function_code_t ;
typedef  int /*<<< orphan*/  bytecode_t ;
struct TYPE_5__ {int /*<<< orphan*/  dispex; int /*<<< orphan*/  length; } ;
struct TYPE_7__ {TYPE_1__ function; TYPE_2__* func_code; int /*<<< orphan*/ * code; int /*<<< orphan*/ * scope_chain; } ;
typedef  TYPE_3__ InterpretedFunction ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  InterpretedFunctionVtbl ; 
 int /*<<< orphan*/  PROPF_CONSTR ; 
 int /*<<< orphan*/  PROPF_WRITABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prototypeW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC10(script_ctx_t *ctx, bytecode_t *code, function_code_t *func_code,
        scope_chain_t *scope_chain, jsdisp_t **ret)
{
    InterpretedFunction *function;
    jsdisp_t *prototype;
    HRESULT hres;

    hres = FUNC4(ctx, NULL, &prototype);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(ctx, NULL, &InterpretedFunctionVtbl, sizeof(InterpretedFunction), PROPF_CONSTR,
                           FALSE, NULL, (void**)&function);
    if(FUNC1(hres)) {
        hres = FUNC5(&function->function.dispex, prototypeW, PROPF_WRITABLE,
                                           FUNC7(prototype));
        if(FUNC1(hres))
            hres = FUNC9(ctx, &function->function.dispex, prototype);
        if(FUNC0(hres))
            FUNC6(&function->function.dispex);
    }
    FUNC6(prototype);
    if(FUNC0(hres))
        return hres;

    if(scope_chain) {
        FUNC8(scope_chain);
        function->scope_chain = scope_chain;
    }

    FUNC2(code);
    function->code = code;
    function->func_code = func_code;
    function->function.length = function->func_code->param_cnt;

    *ret = &function->function.dispex;
    return S_OK;
}