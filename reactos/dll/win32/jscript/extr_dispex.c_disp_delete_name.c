
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int WCHAR ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef int BSTR ;
typedef int BOOL ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_OUTOFMEMORY ;
 int FALSE ;
 scalar_t__ IDispatchEx_DeleteMemberByName (int *,int ,int ) ;
 int IDispatchEx_Release (int *) ;
 scalar_t__ IDispatch_GetIDsOfNames (int *,int *,int *,int,int ,int *) ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SysAllocStringLen (int *,int ) ;
 int SysFreeString (int ) ;
 int TRUE ;
 scalar_t__ delete_prop (int *,int*) ;
 int fdexNameCaseSensitive ;
 scalar_t__ find_prop_name (int *,int ,int const*,int **) ;
 int * iface_to_jsdisp (int *) ;
 int jsdisp_release (int *) ;
 int * jsstr_flatten (int *) ;
 int jsstr_flush (int *,int ) ;
 int jsstr_length (int *) ;
 int make_grfdex (int *,int ) ;
 int string_hash (int const*) ;

HRESULT disp_delete_name(script_ctx_t *ctx, IDispatch *disp, jsstr_t *name, BOOL *ret)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    BSTR bstr;
    HRESULT hres;

    jsdisp = iface_to_jsdisp(disp);
    if(jsdisp) {
        dispex_prop_t *prop;
        const WCHAR *ptr;

        ptr = jsstr_flatten(name);
        if(!ptr) {
            jsdisp_release(jsdisp);
            return E_OUTOFMEMORY;
        }

        hres = find_prop_name(jsdisp, string_hash(ptr), ptr, &prop);
        if(prop) {
            hres = delete_prop(prop, ret);
        }else {
            *ret = TRUE;
            hres = S_OK;
        }

        jsdisp_release(jsdisp);
        return hres;
    }

    bstr = SysAllocStringLen(((void*)0), jsstr_length(name));
    if(!bstr)
        return E_OUTOFMEMORY;
    jsstr_flush(name, bstr);

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        hres = IDispatchEx_DeleteMemberByName(dispex, bstr, make_grfdex(ctx, fdexNameCaseSensitive));
        if(SUCCEEDED(hres))
            *ret = hres == S_OK;
        IDispatchEx_Release(dispex);
    }else {
        DISPID id;

        hres = IDispatch_GetIDsOfNames(disp, &IID_NULL, &bstr, 1, 0, &id);
        if(SUCCEEDED(hres)) {

            *ret = FALSE;
        }else if(hres == DISP_E_UNKNOWNNAME) {

            *ret = TRUE;
            hres = S_OK;
        }
    }

    SysFreeString(bstr);
    return hres;
}
