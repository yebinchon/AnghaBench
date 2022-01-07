
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_6__ {int member_3; int member_2; int * member_1; int * member_0; } ;
struct TYPE_5__ {int document; } ;
typedef int READYSTATE ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int EXCEPINFO ;
typedef TYPE_1__ DocHost ;
typedef TYPE_2__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int DISPID_READYSTATE ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_2__*,int *,int *,int *) ;
 int IDispatch_Release (int *) ;
 int IID_IDispatch ;
 int IID_NULL ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 int LOCALE_SYSTEM_DEFAULT ;
 scalar_t__ S_OK ;
 scalar_t__ VT_I4 ;
 int V_I4 (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static HRESULT get_doc_ready_state(DocHost *This, READYSTATE *ret)
{
    DISPPARAMS dp = {((void*)0),((void*)0),0,0};
    IDispatch *disp;
    EXCEPINFO ei;
    VARIANT var;
    HRESULT hres;

    hres = IUnknown_QueryInterface(This->document, &IID_IDispatch, (void**)&disp);
    if(FAILED(hres))
        return hres;

    hres = IDispatch_Invoke(disp, DISPID_READYSTATE, &IID_NULL, LOCALE_SYSTEM_DEFAULT, DISPATCH_PROPERTYGET,
            &dp, &var, &ei, ((void*)0));
    IDispatch_Release(disp);
    if(FAILED(hres)) {
        WARN("Invoke(DISPID_READYSTATE failed: %08x\n", hres);
        return hres;
    }

    if(V_VT(&var) != VT_I4) {
        WARN("V_VT(var) = %d\n", V_VT(&var));
        VariantClear(&var);
        return E_FAIL;
    }

    *ret = V_I4(&var);
    return S_OK;
}
