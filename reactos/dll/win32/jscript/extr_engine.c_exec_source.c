
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_27__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_35__ {TYPE_6__* call_ctx; int global; int * host_global; int stack_top; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int scope_chain_t ;
typedef void* jsval_t ;
struct TYPE_36__ {TYPE_2__* builtin_info; } ;
typedef TYPE_4__ jsdisp_t ;
struct TYPE_37__ {unsigned int func_cnt; unsigned int var_cnt; int instr_off; TYPE_1__* variables; TYPE_27__* funcs; } ;
typedef TYPE_5__ function_code_t ;
struct TYPE_38__ {unsigned int argc; int flags; struct TYPE_38__* prev_frame; void* variable_obj; void* function_instance; int * this_obj; int stack_base; int ip; int scope; int base_scope; int bytecode; void* ret; TYPE_5__* function; } ;
typedef TYPE_6__ call_frame_t ;
typedef int bytecode_t ;
struct TYPE_34__ {scalar_t__ class; } ;
struct TYPE_33__ {int event_target; } ;
struct TYPE_32__ {int func_id; int name; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DISPID ;


 int EXEC_EVAL ;
 int EXEC_GLOBAL ;
 int EXEC_RETURN_TO_INTERP ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IDispatch_AddRef (int *) ;
 scalar_t__ JSCLASS_GLOBAL ;
 scalar_t__ JSCLASS_NONE ;
 int S_OK ;
 int TRACE (char*,unsigned int,int ,int) ;
 int bind_event_target (TYPE_3__*,TYPE_27__*,TYPE_4__*) ;
 int bytecode_addref (int *) ;
 int create_source_function (TYPE_3__*,int *,TYPE_27__*,int *,TYPE_4__**) ;
 int debugstr_w (int ) ;
 int detach_variable_object (TYPE_3__*,TYPE_6__*,int ) ;
 int enter_bytecode (TYPE_3__*,void**) ;
 int fdexNameEnsure ;
 TYPE_6__* heap_alloc_zero (int) ;
 int heap_free (TYPE_6__*) ;
 TYPE_4__* iface_to_jsdisp (int *) ;
 void* jsdisp_addref (TYPE_4__*) ;
 int jsdisp_get_id (TYPE_4__*,int ,int ,int *) ;
 int jsdisp_propput_name (TYPE_4__*,int ,int ) ;
 int jsdisp_release (TYPE_4__*) ;
 int jsval_obj (TYPE_4__*) ;
 void* jsval_undefined () ;
 int lookup_global_members (TYPE_3__*,int ,int *) ;
 int release_bytecode (int ) ;
 int scope_addref (int *) ;
 int setup_scope (TYPE_3__*,TYPE_6__*,int *,TYPE_4__*,unsigned int,void**) ;
 int * to_disp (int ) ;

HRESULT exec_source(script_ctx_t *ctx, DWORD flags, bytecode_t *bytecode, function_code_t *function, scope_chain_t *scope,
        IDispatch *this_obj, jsdisp_t *function_instance, jsdisp_t *variable_obj, unsigned argc, jsval_t *argv, jsval_t *r)
{
    call_frame_t *frame;
    unsigned i;
    HRESULT hres;

    for(i = 0; i < function->func_cnt; i++) {
        jsdisp_t *func_obj;

        if(!function->funcs[i].event_target)
            continue;

        hres = create_source_function(ctx, bytecode, function->funcs+i, scope, &func_obj);
        if(FAILED(hres))
            return hres;

        hres = bind_event_target(ctx, function->funcs+i, func_obj);
        jsdisp_release(func_obj);
        if(FAILED(hres))
            return hres;
    }

    if(flags & (EXEC_GLOBAL | EXEC_EVAL)) {
        for(i=0; i < function->var_cnt; i++) {
            TRACE("[%d] %s %d\n", i, debugstr_w(function->variables[i].name), function->variables[i].func_id);
            if(function->variables[i].func_id != -1) {
                jsdisp_t *func_obj;

                hres = create_source_function(ctx, bytecode, function->funcs+function->variables[i].func_id, scope, &func_obj);
                if(FAILED(hres))
                    return hres;

                hres = jsdisp_propput_name(variable_obj, function->variables[i].name, jsval_obj(func_obj));
                jsdisp_release(func_obj);
            }else if(!(flags & EXEC_GLOBAL) || !lookup_global_members(ctx, function->variables[i].name, ((void*)0))) {
                DISPID id = 0;

                hres = jsdisp_get_id(variable_obj, function->variables[i].name, fdexNameEnsure, &id);
                if(FAILED(hres))
                    return hres;
            }
        }
    }


    if(this_obj) {
        jsdisp_t *jsthis;

        jsthis = iface_to_jsdisp(this_obj);
        if(jsthis) {
            if(jsthis->builtin_info->class == JSCLASS_GLOBAL || jsthis->builtin_info->class == JSCLASS_NONE)
                this_obj = ((void*)0);
            jsdisp_release(jsthis);
        }
    }

    if(ctx->call_ctx && (flags & EXEC_EVAL)) {
        hres = detach_variable_object(ctx, ctx->call_ctx, FALSE);
        if(FAILED(hres))
            return hres;
    }

    frame = heap_alloc_zero(sizeof(*frame));
    if(!frame)
        return E_OUTOFMEMORY;

    frame->function = function;
    frame->ret = jsval_undefined();
    frame->argc = argc;
    frame->bytecode = bytecode_addref(bytecode);

    if(!(flags & (EXEC_GLOBAL|EXEC_EVAL))) {
        hres = setup_scope(ctx, frame, scope, variable_obj, argc, argv);
        if(FAILED(hres)) {
            release_bytecode(frame->bytecode);
            heap_free(frame);
            return hres;
        }
    }else if(scope) {
        frame->base_scope = frame->scope = scope_addref(scope);
    }

    frame->ip = function->instr_off;
    frame->stack_base = ctx->stack_top;
    if(this_obj)
        frame->this_obj = this_obj;
    else if(ctx->host_global)
        frame->this_obj = ctx->host_global;
    else
        frame->this_obj = to_disp(ctx->global);
    IDispatch_AddRef(frame->this_obj);

    if(function_instance)
        frame->function_instance = jsdisp_addref(function_instance);

    frame->flags = flags;
    frame->variable_obj = jsdisp_addref(variable_obj);

    frame->prev_frame = ctx->call_ctx;
    ctx->call_ctx = frame;

    if(flags & EXEC_RETURN_TO_INTERP) {




        if(r)
            *r = jsval_undefined();
        return S_OK;
    }

    return enter_bytecode(ctx, r);
}
