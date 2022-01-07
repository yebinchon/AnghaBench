
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsstr_t ;
typedef int VARIANT ;
typedef int IDispatch ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IDispatch_AddRef (int *) ;
 int IID_IDispatch ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int SysStringLen (int ) ;


 int VT_BYREF ;
 int VT_VARIANT ;
 int V_BOOL (int *) ;
 int V_BSTR (int *) ;
 int * V_DISPATCH (int *) ;
 int V_I1 (int *) ;
 int V_I2 (int *) ;
 int V_I4 (int *) ;
 int V_INT (int *) ;
 int V_R4 (int *) ;
 int V_R8 (int *) ;
 int V_UI1 (int *) ;
 int V_UI2 (int *) ;
 int V_UI4 (int *) ;
 int V_UI8 (int *) ;
 int V_UNKNOWN (int *) ;
 int * V_VARIANTREF (int *) ;
 int V_VT (int *) ;
 int * jsstr_alloc_len (int ,int ) ;
 int * jsstr_null_bstr () ;
 int jsval_bool (int ) ;
 int jsval_disp (int *) ;
 int jsval_null () ;
 int jsval_number (int ) ;
 int jsval_string (int *) ;
 int jsval_undefined () ;
 int jsval_variant (int *,int *) ;

HRESULT variant_to_jsval(VARIANT *var, jsval_t *r)
{
    if(V_VT(var) == (VT_VARIANT|VT_BYREF))
        var = V_VARIANTREF(var);

    switch(V_VT(var)) {
    case 140:
        *r = jsval_undefined();
        return S_OK;
    case 135:
        *r = jsval_null();
        return S_OK;
    case 143:
        *r = jsval_bool(V_BOOL(var));
        return S_OK;
    case 137:
        *r = jsval_number(V_I4(var));
        return S_OK;
    case 133:
        *r = jsval_number(V_R8(var));
        return S_OK;
    case 142: {
        jsstr_t *str;

        if(V_BSTR(var)) {
            str = jsstr_alloc_len(V_BSTR(var), SysStringLen(V_BSTR(var)));
            if(!str)
                return E_OUTOFMEMORY;
        }else {
            str = jsstr_null_bstr();
        }

        *r = jsval_string(str);
        return S_OK;
    }
    case 141: {
        if(V_DISPATCH(var))
            IDispatch_AddRef(V_DISPATCH(var));
        *r = jsval_disp(V_DISPATCH(var));
        return S_OK;
    }
    case 139:
        *r = jsval_number(V_I1(var));
        return S_OK;
    case 132:
        *r = jsval_number(V_UI1(var));
        return S_OK;
    case 138:
        *r = jsval_number(V_I2(var));
        return S_OK;
    case 131:
        *r = jsval_number(V_UI2(var));
        return S_OK;
    case 136:
        *r = jsval_number(V_INT(var));
        return S_OK;
    case 130:
        *r = jsval_number(V_UI4(var));
        return S_OK;
    case 129:




        *r = jsval_number(V_UI8(var));
        return S_OK;
    case 134:
        *r = jsval_number(V_R4(var));
        return S_OK;
    case 128:
        if(V_UNKNOWN(var)) {
            IDispatch *disp;
            HRESULT hres;

            hres = IUnknown_QueryInterface(V_UNKNOWN(var), &IID_IDispatch, (void**)&disp);
            if(SUCCEEDED(hres)) {
                *r = jsval_disp(disp);
                return S_OK;
            }
        }else {
            *r = jsval_disp(((void*)0));
            return S_OK;
        }

    default:
        return jsval_variant(r, var);
    }
}
