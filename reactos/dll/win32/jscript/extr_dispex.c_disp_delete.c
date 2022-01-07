
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef int BOOL ;


 scalar_t__ DISP_E_MEMBERNOTFOUND ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IDispatchEx_DeleteMemberByDispID (int *,int ) ;
 int IDispatchEx_Release (int *) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 scalar_t__ S_OK ;
 scalar_t__ delete_prop (int *,int*) ;
 int * get_prop (int *,int ) ;
 int * iface_to_jsdisp (int *) ;
 int jsdisp_release (int *) ;

HRESULT disp_delete(IDispatch *disp, DISPID id, BOOL *ret)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    HRESULT hres;

    jsdisp = iface_to_jsdisp(disp);
    if(jsdisp) {
        dispex_prop_t *prop;

        prop = get_prop(jsdisp, id);
        if(prop)
            hres = delete_prop(prop, ret);
        else
            hres = DISP_E_MEMBERNOTFOUND;

        jsdisp_release(jsdisp);
        return hres;
    }

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FAILED(hres)) {
        *ret = FALSE;
        return S_OK;
    }

    hres = IDispatchEx_DeleteMemberByDispID(dispex, id);
    IDispatchEx_Release(dispex);
    if(FAILED(hres))
        return hres;

    *ret = hres == S_OK;
    return S_OK;
}
