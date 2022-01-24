#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_2__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_9__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_11__ {TYPE_1__ function; int /*<<< orphan*/  scope_chain; int /*<<< orphan*/  func_code; int /*<<< orphan*/  code; } ;
typedef  TYPE_3__ InterpretedFunction ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FunctionInstance ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 unsigned int DISPATCH_CONSTRUCT ; 
 unsigned int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ; 
 int /*<<< orphan*/  EXEC_CONSTRUCTOR ; 
 int /*<<< orphan*/  EXEC_RETURN_TO_INTERP ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCRIPTSTATE_CLOSED ; 
 scalar_t__ SCRIPTSTATE_UNINITIALIZED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_obj, unsigned flags,
         unsigned argc, jsval_t *argv, jsval_t *r)
{
    InterpretedFunction *function = (InterpretedFunction*)func;
    jsdisp_t *var_disp, *new_obj = NULL;
    DWORD exec_flags = 0;
    HRESULT hres;

    FUNC2("%p\n", function);

    if(ctx->state == SCRIPTSTATE_UNINITIALIZED || ctx->state == SCRIPTSTATE_CLOSED) {
        FUNC3("Script engine state does not allow running code.\n");
        return E_UNEXPECTED;
    }

    if(flags & DISPATCH_CONSTRUCT) {
        hres = FUNC5(ctx, &function->function.dispex, &new_obj);
        if(FUNC0(hres))
            return hres;
        this_obj = FUNC8(new_obj);
    }

    if(flags & DISPATCH_JSCRIPT_CALLEREXECSSOURCE)
        exec_flags |= EXEC_RETURN_TO_INTERP;
    if(flags & DISPATCH_CONSTRUCT)
        exec_flags |= EXEC_CONSTRUCTOR;

    hres = FUNC4(ctx, NULL, NULL, &var_disp);
    if(FUNC1(hres))
        hres = FUNC6(ctx, exec_flags, function->code, function->func_code, function->scope_chain, this_obj,
                           &function->function.dispex, var_disp, argc, argv, r);
    if(new_obj)
        FUNC7(new_obj);

    FUNC7(var_disp);
    return hres;
}