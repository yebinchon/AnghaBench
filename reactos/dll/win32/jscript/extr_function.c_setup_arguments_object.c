
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int object_constr; } ;
typedef TYPE_3__ script_ctx_t ;
struct TYPE_15__ {int * arguments_obj; TYPE_2__* base_scope; int argc; int function_instance; } ;
typedef TYPE_4__ call_frame_t ;
typedef char WCHAR ;
struct TYPE_17__ {int jsdisp; TYPE_5__* function; int argc; TYPE_4__* frame; } ;
struct TYPE_12__ {int dispex; } ;
struct TYPE_16__ {TYPE_1__ function; } ;
struct TYPE_13__ {int jsobj; } ;
typedef TYPE_5__ InterpretedFunction ;
typedef int HRESULT ;
typedef TYPE_6__ ArgumentsInstance ;


 int Arguments_info ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONFIGURABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int argumentsW ;
 scalar_t__ function_from_jsdisp (int ) ;
 TYPE_6__* heap_alloc_zero (int) ;
 int heap_free (TYPE_6__*) ;
 int init_dispex_from_constr (int *,TYPE_3__*,int *,int ) ;
 int jsdisp_addref (int ) ;
 int jsdisp_define_data_property (int *,char const*,int,int ) ;
 int jsdisp_propput (int ,int ,int,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (int ) ;
 int jsval_obj (int *) ;
 char const* lengthW ;

HRESULT setup_arguments_object(script_ctx_t *ctx, call_frame_t *frame)
{
    ArgumentsInstance *args;
    HRESULT hres;

    static const WCHAR caleeW[] = {'c','a','l','l','e','e',0};

    args = heap_alloc_zero(sizeof(*args));
    if(!args)
        return E_OUTOFMEMORY;

    hres = init_dispex_from_constr(&args->jsdisp, ctx, &Arguments_info, ctx->object_constr);
    if(FAILED(hres)) {
        heap_free(args);
        return hres;
    }

    args->function = (InterpretedFunction*)function_from_jsdisp(jsdisp_addref(frame->function_instance));
    args->argc = frame->argc;
    args->frame = frame;

    hres = jsdisp_define_data_property(&args->jsdisp, lengthW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                       jsval_number(args->argc));
    if(SUCCEEDED(hres))
        hres = jsdisp_define_data_property(&args->jsdisp, caleeW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                           jsval_obj(&args->function->function.dispex));
    if(SUCCEEDED(hres))
        hres = jsdisp_propput(frame->base_scope->jsobj, argumentsW, PROPF_WRITABLE, jsval_obj(&args->jsdisp));
    if(FAILED(hres)) {
        jsdisp_release(&args->jsdisp);
        return hres;
    }

    frame->arguments_obj = &args->jsdisp;
    return S_OK;
}
