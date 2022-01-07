
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int ) ;
 int HINT_NUMBER ;







 double NAN ;
 int S_OK ;
 int assert (int ) ;
 int debugstr_variant (int ) ;
 int get_bool (int ) ;
 double get_number (int ) ;
 int get_string (int ) ;
 int get_variant (int ) ;
 int jsval_release (int ) ;
 int jsval_type (int ) ;
 int str_to_number (int ,double*) ;
 int to_primitive (int *,int ,int *,int ) ;

HRESULT to_number(script_ctx_t *ctx, jsval_t val, double *ret)
{
    switch(jsval_type(val)) {
    case 129:
        *ret = NAN;
        return S_OK;
    case 133:
        *ret = 0;
        return S_OK;
    case 132:
        *ret = get_number(val);
        return S_OK;
    case 130:
        return str_to_number(get_string(val), ret);
    case 131: {
        jsval_t prim;
        HRESULT hres;

        hres = to_primitive(ctx, val, &prim, HINT_NUMBER);
        if(FAILED(hres))
            return hres;

        hres = to_number(ctx, prim, ret);
        jsval_release(prim);
        return hres;
    }
    case 134:
        *ret = get_bool(val) ? 1 : 0;
        return S_OK;
    case 128:
        FIXME("unimplemented for variant %s\n", debugstr_variant(get_variant(val)));
        return E_NOTIMPL;
    };

    assert(0);
    return E_FAIL;
}
