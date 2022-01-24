#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_27__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {TYPE_6__* call_ctx; int /*<<< orphan*/  global; int /*<<< orphan*/ * host_global; int /*<<< orphan*/  stack_top; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  scope_chain_t ;
typedef  void* jsval_t ;
struct TYPE_36__ {TYPE_2__* builtin_info; } ;
typedef  TYPE_4__ jsdisp_t ;
struct TYPE_37__ {unsigned int func_cnt; unsigned int var_cnt; int /*<<< orphan*/  instr_off; TYPE_1__* variables; TYPE_27__* funcs; } ;
typedef  TYPE_5__ function_code_t ;
struct TYPE_38__ {unsigned int argc; int flags; struct TYPE_38__* prev_frame; void* variable_obj; void* function_instance; int /*<<< orphan*/ * this_obj; int /*<<< orphan*/  stack_base; int /*<<< orphan*/  ip; int /*<<< orphan*/  scope; int /*<<< orphan*/  base_scope; int /*<<< orphan*/  bytecode; void* ret; TYPE_5__* function; } ;
typedef  TYPE_6__ call_frame_t ;
typedef  int /*<<< orphan*/  bytecode_t ;
struct TYPE_34__ {scalar_t__ class; } ;
struct TYPE_33__ {int /*<<< orphan*/  event_target; } ;
struct TYPE_32__ {int func_id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int EXEC_EVAL ; 
 int EXEC_GLOBAL ; 
 int EXEC_RETURN_TO_INTERP ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ JSCLASS_GLOBAL ; 
 scalar_t__ JSCLASS_NONE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_27__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_27__*,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,void**) ; 
 int /*<<< orphan*/  fdexNameEnsure ; 
 TYPE_6__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 void* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ *,TYPE_4__*,unsigned int,void**) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ) ; 

HRESULT FUNC23(script_ctx_t *ctx, DWORD flags, bytecode_t *bytecode, function_code_t *function, scope_chain_t *scope,
        IDispatch *this_obj, jsdisp_t *function_instance, jsdisp_t *variable_obj, unsigned argc, jsval_t *argv, jsval_t *r)
{
    call_frame_t *frame;
    unsigned i;
    HRESULT hres;

    for(i = 0; i < function->func_cnt; i++) {
        jsdisp_t *func_obj;

        if(!function->funcs[i].event_target)
            continue;

        hres = FUNC5(ctx, bytecode, function->funcs+i, scope, &func_obj);
        if(FUNC0(hres))
            return hres;

        hres = FUNC3(ctx, function->funcs+i, func_obj);
        FUNC15(func_obj);
        if(FUNC0(hres))
            return hres;
    }

    if(flags & (EXEC_GLOBAL | EXEC_EVAL)) {
        for(i=0; i < function->var_cnt; i++) {
            FUNC2("[%d] %s %d\n", i, FUNC6(function->variables[i].name), function->variables[i].func_id);
            if(function->variables[i].func_id != -1) {
                jsdisp_t *func_obj;

                hres = FUNC5(ctx, bytecode, function->funcs+function->variables[i].func_id, scope, &func_obj);
                if(FUNC0(hres))
                    return hres;

                hres = FUNC14(variable_obj, function->variables[i].name, FUNC16(func_obj));
                FUNC15(func_obj);
            }else if(!(flags & EXEC_GLOBAL) || !FUNC18(ctx, function->variables[i].name, NULL)) {
                DISPID id = 0;

                hres = FUNC13(variable_obj, function->variables[i].name, fdexNameEnsure, &id);
                if(FUNC0(hres))
                    return hres;
            }
        }
    }

    /* ECMA-262 3rd Edition    11.2.3.7 */
    if(this_obj) {
        jsdisp_t *jsthis;

        jsthis = FUNC11(this_obj);
        if(jsthis) {
            if(jsthis->builtin_info->class == JSCLASS_GLOBAL || jsthis->builtin_info->class == JSCLASS_NONE)
                this_obj = NULL;
            FUNC15(jsthis);
        }
    }

    if(ctx->call_ctx && (flags & EXEC_EVAL)) {
        hres = FUNC7(ctx, ctx->call_ctx, FALSE);
        if(FUNC0(hres))
            return hres;
    }

    frame = FUNC9(sizeof(*frame));
    if(!frame)
        return E_OUTOFMEMORY;

    frame->function = function;
    frame->ret = FUNC17();
    frame->argc = argc;
    frame->bytecode = FUNC4(bytecode);

    if(!(flags & (EXEC_GLOBAL|EXEC_EVAL))) {
        hres = FUNC21(ctx, frame, scope, variable_obj, argc, argv);
        if(FUNC0(hres)) {
            FUNC19(frame->bytecode);
            FUNC10(frame);
            return hres;
        }
    }else if(scope) {
        frame->base_scope = frame->scope = FUNC20(scope);
    }

    frame->ip = function->instr_off;
    frame->stack_base = ctx->stack_top;
    if(this_obj)
        frame->this_obj = this_obj;
    else if(ctx->host_global)
        frame->this_obj = ctx->host_global;
    else
        frame->this_obj = FUNC22(ctx->global);
    FUNC1(frame->this_obj);

    if(function_instance)
        frame->function_instance = FUNC12(function_instance);

    frame->flags = flags;
    frame->variable_obj = FUNC12(variable_obj);

    frame->prev_frame = ctx->call_ctx;
    ctx->call_ctx = frame;

    if(flags & EXEC_RETURN_TO_INTERP) {
        /*
         * We're called directly from interpreter, so we may just setup call frame and return.
         * Already running interpreter will take care of execution.
         */
        if(r)
            *r = FUNC17();
        return S_OK;
    }

    return FUNC8(ctx, r);
}