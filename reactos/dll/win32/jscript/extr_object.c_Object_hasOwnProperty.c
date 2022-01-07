
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int disp; int dispex; int jsdisp; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
struct TYPE_12__ {int lcid; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int property_desc_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;
typedef scalar_t__ BSTR ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IDispatchEx_GetDispID (int ,scalar_t__,int ,int *) ;
 scalar_t__ IDispatch_GetIDsOfNames (int ,int *,scalar_t__*,int,int ,int *) ;
 int IID_NULL ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ SysAllocStringLen (int *,int ) ;
 int SysFreeString (scalar_t__) ;
 int TRACE (char*) ;
 int TRUE ;
 int fdexNameCaseSensitive ;
 scalar_t__ is_dispex (TYPE_2__*) ;
 scalar_t__ is_jsdisp (TYPE_2__*) ;
 scalar_t__ jsdisp_get_own_property (int ,int const*,int ,int *) ;
 int * jsstr_flatten (int *) ;
 int jsstr_flush (int *,scalar_t__) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_bool (int) ;
 int make_grfdex (TYPE_3__*,int ) ;
 scalar_t__ to_string (TYPE_3__*,int ,int **) ;

__attribute__((used)) static HRESULT Object_hasOwnProperty(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *name;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_bool(FALSE);
        return S_OK;
    }

    hres = to_string(ctx, argv[0], &name);
    if(FAILED(hres))
        return hres;

    if(is_jsdisp(jsthis)) {
        property_desc_t prop_desc;
        const WCHAR *name_str;

        name_str = jsstr_flatten(name);
        if(!name_str) {
            jsstr_release(name);
            return E_OUTOFMEMORY;
        }

        hres = jsdisp_get_own_property(jsthis->u.jsdisp, name_str, TRUE, &prop_desc);
        jsstr_release(name);
        if(FAILED(hres) && hres != DISP_E_UNKNOWNNAME)
            return hres;

        if(r) *r = jsval_bool(hres == S_OK);
        return S_OK;
    }


    bstr = SysAllocStringLen(((void*)0), jsstr_length(name));
    if(bstr)
        jsstr_flush(name, bstr);
    jsstr_release(name);
    if(!bstr)
        return E_OUTOFMEMORY;

    if(is_dispex(jsthis))
        hres = IDispatchEx_GetDispID(jsthis->u.dispex, bstr, make_grfdex(ctx, fdexNameCaseSensitive), &id);
    else
        hres = IDispatch_GetIDsOfNames(jsthis->u.disp, &IID_NULL, &bstr, 1, ctx->lcid, &id);

    SysFreeString(bstr);
    if(r)
        *r = jsval_bool(SUCCEEDED(hres));
    return S_OK;
}
