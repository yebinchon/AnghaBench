
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
typedef scalar_t__ DWORD ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_length (int *,int *,int **,scalar_t__*) ;
 int jsdisp_propput_idx (int *,scalar_t__,int ) ;
 int jsval_number (scalar_t__) ;
 int set_length (int *,scalar_t__) ;

__attribute__((used)) static HRESULT Array_push(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    DWORD length = 0;
    unsigned i;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    for(i=0; i < argc; i++) {
        hres = jsdisp_propput_idx(jsthis, length+i, argv[i]);
        if(FAILED(hres))
            return hres;
    }

    hres = set_length(jsthis, length+argc);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_number(length+argc);
    return S_OK;
}
