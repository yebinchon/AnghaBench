
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;



 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int JS_E_INVALIDARG ;
 int S_OK ;
 int TRACE (char*) ;
 int create_enumerator (int *,int *,int **) ;
 int jsval_obj (int *) ;
 int throw_syntax_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT EnumeratorConstr_value(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *obj;
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128: {
        if (argc > 1)
            return throw_syntax_error(ctx, JS_E_INVALIDARG, ((void*)0));

        hres = create_enumerator(ctx, (argc == 1) ? &argv[0] : 0, &obj);
        if(FAILED(hres))
            return hres;

        *r = jsval_obj(obj);
        break;
    }
    default:
        FIXME("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
