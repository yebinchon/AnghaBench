
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
 int FIXME (char*,...) ;
 int S_OK ;

__attribute__((used)) static HRESULT VBArray_value(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FIXME("\n");

    switch(flags) {
        default:
            FIXME("unimplemented flags %x\n", flags);
            return E_NOTIMPL;
    }

    return S_OK;
}
