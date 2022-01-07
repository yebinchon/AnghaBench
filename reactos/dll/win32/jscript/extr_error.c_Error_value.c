
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int) ;

 int JS_E_FUNCTION_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Error_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    TRACE("\n");

    switch(flags) {
    case 128:
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));
    default:
        FIXME("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}
