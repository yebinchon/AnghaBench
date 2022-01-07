
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_6__ {int safeopt; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef scalar_t__ WORD ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef int IDispatch ;
typedef int HRESULT ;


 scalar_t__ DISPATCH_CONSTRUCT ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IID_IDispatch ;
 int INTERFACESAFE_FOR_UNTRUSTED_DATA ;
 int INTERFACE_USES_DISPEX ;
 int INTERFACE_USES_SECURITY_MANAGER ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int JS_E_CANNOT_CREATE_OBJ ;
 int S_OK ;
 int TRACE (char*) ;
 int * create_activex_object (TYPE_1__*,int const*) ;
 int jsstr_release (int *) ;
 int jsval_disp (int *) ;
 int throw_generic_error (TYPE_1__*,int ,int *) ;
 int to_flat_string (TYPE_1__*,int ,int **,int const**) ;

__attribute__((used)) static HRESULT ActiveXObject_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t * progid_str;
    const WCHAR *progid;
    IDispatch *disp;
    IUnknown *obj;
    HRESULT hres;

    TRACE("\n");

    if(flags != DISPATCH_CONSTRUCT) {
        FIXME("unsupported flags %x\n", flags);
        return E_NOTIMPL;
    }

    if(ctx->safeopt != (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER)
        && ctx->safeopt != INTERFACE_USES_DISPEX) {
        FIXME("Unsupported safeopt %x\n", ctx->safeopt);
        return E_NOTIMPL;
    }

    if(argc != 1) {
        FIXME("unsupported argc %d\n", argc);
        return E_NOTIMPL;
    }

    hres = to_flat_string(ctx, argv[0], &progid_str, &progid);
    if(FAILED(hres))
        return hres;

    obj = create_activex_object(ctx, progid);
    jsstr_release(progid_str);
    if(!obj)
        return throw_generic_error(ctx, JS_E_CANNOT_CREATE_OBJ, ((void*)0));

    hres = IUnknown_QueryInterface(obj, &IID_IDispatch, (void**)&disp);
    IUnknown_Release(obj);
    if(FAILED(hres)) {
        FIXME("Object does not support IDispatch\n");
        return E_NOTIMPL;
    }

    *r = jsval_disp(disp);
    return S_OK;
}
