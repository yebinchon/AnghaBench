
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FAILED (int ) ;
 int FIXME (char*,int ) ;
 int HINT_STRING ;






 int S_OK ;
 int debugstr_jsval (int ) ;
 int double_to_string (int ,int **) ;
 int get_bool (int ) ;
 int get_number (int ) ;
 int get_string (int ) ;
 int * jsstr_addref (int ) ;
 int * jsstr_alloc (char const*) ;
 int * jsstr_undefined () ;
 int jsval_release (int ) ;
 int jsval_type (int ) ;
 int to_primitive (int *,int ,int *,int ) ;

HRESULT to_string(script_ctx_t *ctx, jsval_t val, jsstr_t **str)
{
    static const WCHAR nullW[] = {'n','u','l','l',0};
    static const WCHAR trueW[] = {'t','r','u','e',0};
    static const WCHAR falseW[] = {'f','a','l','s','e',0};

    switch(jsval_type(val)) {
    case 128:
        *str = jsstr_undefined();
        return S_OK;
    case 132:
        *str = jsstr_alloc(nullW);
        break;
    case 131:
        return double_to_string(get_number(val), str);
    case 129:
        *str = jsstr_addref(get_string(val));
        break;
    case 130: {
        jsval_t prim;
        HRESULT hres;

        hres = to_primitive(ctx, val, &prim, HINT_STRING);
        if(FAILED(hres))
            return hres;

        hres = to_string(ctx, prim, str);
        jsval_release(prim);
        return hres;
    }
    case 133:
        *str = jsstr_alloc(get_bool(val) ? trueW : falseW);
        break;
    default:
        FIXME("unsupported %s\n", debugstr_jsval(val));
        return E_NOTIMPL;
    }

    return *str ? S_OK : E_OUTOFMEMORY;
}
