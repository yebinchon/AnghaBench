
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;
typedef scalar_t__ BSTR ;


 int E_OUTOFMEMORY ;
 int IDispatchEx_GetDispID (int *,scalar_t__,int ,scalar_t__*) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_GetIDsOfNames (int *,int *,scalar_t__*,int,int ,scalar_t__*) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ SysAllocString (int const*) ;
 int SysFreeString (scalar_t__) ;
 int TRACE (char*) ;
 int fdexNameCaseSensitive ;
 int * iface_to_jsdisp (int *) ;
 int jsdisp_get_id (int *,int const*,int,scalar_t__*) ;
 int jsdisp_release (int *) ;
 int make_grfdex (int *,int) ;

__attribute__((used)) static HRESULT disp_get_id(script_ctx_t *ctx, IDispatch *disp, const WCHAR *name, BSTR name_bstr, DWORD flags, DISPID *id)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    BSTR bstr;
    HRESULT hres;

    jsdisp = iface_to_jsdisp(disp);
    if(jsdisp) {
        hres = jsdisp_get_id(jsdisp, name, flags, id);
        jsdisp_release(jsdisp);
        return hres;
    }

    if(name_bstr) {
        bstr = name_bstr;
    }else {
        bstr = SysAllocString(name);
        if(!bstr)
            return E_OUTOFMEMORY;
    }

    *id = 0;
    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        hres = IDispatchEx_GetDispID(dispex, bstr, make_grfdex(ctx, flags|fdexNameCaseSensitive), id);
        IDispatchEx_Release(dispex);
    }else {
        TRACE("using IDispatch\n");
        hres = IDispatch_GetIDsOfNames(disp, &IID_NULL, &bstr, 1, 0, id);
    }

    if(name_bstr != bstr)
        SysFreeString(bstr);
    return hres;
}
