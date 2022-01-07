
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_5__ {int IDispatchEx_iface; } ;
typedef TYPE_1__ jsdisp_t ;
struct TYPE_6__ {int name; int event_target; } ;
typedef TYPE_2__ function_code_t ;
typedef int exprval_t ;
typedef int IDispatch ;
typedef int IBindEventHandler ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IBindEventHandler_BindHandler (int *,int ,int *) ;
 int IBindEventHandler_Release (int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IID_IBindEventHandler ;
 scalar_t__ SUCCEEDED (int ) ;
 int WARN (char*,int ) ;
 int debugstr_jsval (int ) ;
 int exprval_to_value (int *,int *,int *) ;
 int * get_object (int ) ;
 int identifier_eval (int *,int ,int *) ;
 int is_object_instance (int ) ;
 int jsval_release (int ) ;

__attribute__((used)) static HRESULT bind_event_target(script_ctx_t *ctx, function_code_t *func, jsdisp_t *func_obj)
{
    IBindEventHandler *target;
    exprval_t exprval;
    IDispatch *disp;
    jsval_t v;
    HRESULT hres;

    hres = identifier_eval(ctx, func->event_target, &exprval);
    if(FAILED(hres))
        return hres;

    hres = exprval_to_value(ctx, &exprval, &v);
    if(FAILED(hres))
        return hres;

    if(!is_object_instance(v)) {
        FIXME("Can't bind to %s\n", debugstr_jsval(v));
        jsval_release(v);
    }

    disp = get_object(v);
    hres = IDispatch_QueryInterface(disp, &IID_IBindEventHandler, (void**)&target);
    if(SUCCEEDED(hres)) {
        hres = IBindEventHandler_BindHandler(target, func->name, (IDispatch*)&func_obj->IDispatchEx_iface);
        IBindEventHandler_Release(target);
        if(FAILED(hres))
            WARN("BindEvent failed: %08x\n", hres);
    }else {
        FIXME("No IBindEventHandler, not yet supported binding\n");
    }

    IDispatch_Release(disp);
    return hres;
}
