
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_11__ {int global; TYPE_2__* call_ctx; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_12__ {int flags; int variable_obj; int * this_obj; int * scope; } ;
typedef TYPE_2__ call_frame_t ;
struct TYPE_13__ {int global_code; } ;
typedef TYPE_3__ bytecode_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ;
 int EXEC_EVAL ;
 int EXEC_GLOBAL ;
 int EXEC_RETURN_TO_INTERP ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int S_OK ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*,int ,int ) ;
 int compile_script (TYPE_1__*,int const*,int *,int *,int ,int ,TYPE_3__**) ;
 int debugstr_jsval (int ) ;
 int exec_source (TYPE_1__*,int,TYPE_3__*,int *,int *,int *,int *,int ,int ,int *,int *) ;
 int get_string (int ) ;
 int is_string (int ) ;
 int * jsstr_flatten (int ) ;
 int jsval_copy (int ,int *) ;
 int jsval_undefined () ;
 int release_bytecode (TYPE_3__*) ;
 int throw_syntax_error (TYPE_1__*,int ,int *) ;

HRESULT JSGlobal_eval(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    call_frame_t *frame = ctx->call_ctx;
    DWORD exec_flags = EXEC_EVAL;
    bytecode_t *code;
    const WCHAR *src;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_undefined();
        return S_OK;
    }

    if(!is_string(argv[0])) {
        if(r)
            return jsval_copy(argv[0], r);
        return S_OK;
    }

    src = jsstr_flatten(get_string(argv[0]));
    if(!src)
        return E_OUTOFMEMORY;

    TRACE("parsing %s\n", debugstr_jsval(argv[0]));
    hres = compile_script(ctx, src, ((void*)0), ((void*)0), TRUE, FALSE, &code);
    if(FAILED(hres)) {
        WARN("parse (%s) failed: %08x\n", debugstr_jsval(argv[0]), hres);
        return throw_syntax_error(ctx, hres, ((void*)0));
    }

    if(!frame || (frame->flags & EXEC_GLOBAL))
        exec_flags |= EXEC_GLOBAL;
    if(flags & DISPATCH_JSCRIPT_CALLEREXECSSOURCE)
        exec_flags |= EXEC_RETURN_TO_INTERP;
    hres = exec_source(ctx, exec_flags, code, &code->global_code, frame ? frame->scope : ((void*)0),
            frame ? frame->this_obj : ((void*)0), ((void*)0), frame ? frame->variable_obj : ctx->global, 0, ((void*)0), r);
    release_bytecode(code);
    return hres;
}
