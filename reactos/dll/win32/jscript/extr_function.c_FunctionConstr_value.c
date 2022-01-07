
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int IDispatch ;
typedef int HRESULT ;




 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int S_OK ;
 int TRACE (char*) ;
 int construct_function (int *,unsigned int,int *,int **) ;
 int jsval_disp (int *) ;

__attribute__((used)) static HRESULT FunctionConstr_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    HRESULT hres;

    TRACE("\n");

    switch(flags) {
    case 128:
    case 129: {
        IDispatch *ret;

        hres = construct_function(ctx, argc, argv, &ret);
        if(FAILED(hres))
            return hres;

        *r = jsval_disp(ret);
        break;
    }
    default:
        FIXME("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
