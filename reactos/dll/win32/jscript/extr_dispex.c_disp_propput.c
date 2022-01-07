
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int ei; } ;
struct TYPE_11__ {TYPE_2__ ei; int lcid; TYPE_1__* jscaller; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int VARIANT ;
typedef int ULONG ;
struct TYPE_12__ {int member_2; int member_3; int * member_1; int * member_0; } ;
struct TYPE_9__ {int IServiceProvider_iface; } ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_4__ DISPPARAMS ;
typedef int DISPID ;


 int DISPATCH_PROPERTYPUT ;
 int DISPATCH_PROPERTYPUTREF ;
 int DISPID_PROPERTYPUT ;
 int DISP_E_MEMBERNOTFOUND ;
 scalar_t__ FAILED (int ) ;
 int IDispatchEx_InvokeEx (int *,int ,int ,int ,TYPE_4__*,int *,int *,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_4__*,int *,int *,int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int clear_ei (TYPE_3__*) ;
 int * get_prop (int *,int ) ;
 int * iface_to_jsdisp (int *) ;
 int jsdisp_release (int *) ;
 int jsval_to_variant (int ,int *) ;
 int prop_put (int *,int *,int ) ;

HRESULT disp_propput(script_ctx_t *ctx, IDispatch *disp, DISPID id, jsval_t val)
{
    jsdisp_t *jsdisp;
    HRESULT hres;

    jsdisp = iface_to_jsdisp(disp);
    if(jsdisp) {
        dispex_prop_t *prop;

        prop = get_prop(jsdisp, id);
        if(prop)
            hres = prop_put(jsdisp, prop, val);
        else
            hres = DISP_E_MEMBERNOTFOUND;

        jsdisp_release(jsdisp);
    }else {
        DISPID dispid = DISPID_PROPERTYPUT;
        DWORD flags = DISPATCH_PROPERTYPUT;
        VARIANT var;
        DISPPARAMS dp = {&var, &dispid, 1, 1};
        IDispatchEx *dispex;

        hres = jsval_to_variant(val, &var);
        if(FAILED(hres))
            return hres;

        if(V_VT(&var) == VT_DISPATCH)
            flags |= DISPATCH_PROPERTYPUTREF;

        clear_ei(ctx);
        hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
        if(SUCCEEDED(hres)) {
            hres = IDispatchEx_InvokeEx(dispex, id, ctx->lcid, flags, &dp, ((void*)0), &ctx->ei.ei,
                    &ctx->jscaller->IServiceProvider_iface);
            IDispatchEx_Release(dispex);
        }else {
            ULONG err = 0;

            TRACE("using IDispatch\n");
            hres = IDispatch_Invoke(disp, id, &IID_NULL, ctx->lcid, flags, &dp, ((void*)0), &ctx->ei.ei, &err);
        }

        VariantClear(&var);
    }

    return hres;
}
