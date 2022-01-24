#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * function_constr; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  float WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_9__ {float const* name; TYPE_1__ function; int /*<<< orphan*/  proc; } ;
typedef  TYPE_3__ NativeFunction ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FunctionConstr_value ; 
 int /*<<< orphan*/  FunctionInst_info ; 
 int /*<<< orphan*/  FunctionProt_value ; 
 int /*<<< orphan*/  Function_info ; 
 int /*<<< orphan*/  NativeFunctionVtbl ; 
 int PROPF_CONSTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 float const* prototypeW ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC7(script_ctx_t *ctx, jsdisp_t *object_prototype)
{
    NativeFunction *prot, *constr;
    HRESULT hres;

    static const WCHAR FunctionW[] = {'F','u','n','c','t','i','o','n',0};

    hres = FUNC2(ctx, &Function_info, &NativeFunctionVtbl, sizeof(NativeFunction), PROPF_CONSTR,
                           TRUE, object_prototype, (void**)&prot);
    if(FUNC0(hres))
        return hres;

    prot->proc = FunctionProt_value;
    prot->name = prototypeW;

    hres = FUNC2(ctx, &FunctionInst_info, &NativeFunctionVtbl, sizeof(NativeFunction), PROPF_CONSTR|1,
                           TRUE, &prot->function.dispex, (void**)&constr);
    if(FUNC1(hres)) {
        constr->proc = FunctionConstr_value;
        constr->name = FunctionW;
        hres = FUNC3(&constr->function.dispex, prototypeW, 0, FUNC5(&prot->function.dispex));
        if(FUNC1(hres))
            hres = FUNC6(ctx, &constr->function.dispex, &prot->function.dispex);
        if(FUNC0(hres))
            FUNC4(&constr->function.dispex);
    }
    FUNC4(&prot->function.dispex);
    if(FUNC0(hres))
        return hres;

    ctx->function_constr = &constr->function.dispex;
    return S_OK;
}