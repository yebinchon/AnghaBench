
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef unsigned int WCHAR ;
typedef int HRESULT ;
typedef unsigned int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int * jsstr_alloc_buf (unsigned int,unsigned int**) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 int to_uint32 (int *,int ,unsigned int*) ;

__attribute__((used)) static HRESULT StringConstr_fromCharCode(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    WCHAR *ret_str;
    DWORD i, code;
    jsstr_t *ret;
    HRESULT hres;

    TRACE("\n");

    ret = jsstr_alloc_buf(argc, &ret_str);
    if(!ret)
        return E_OUTOFMEMORY;

    for(i=0; i<argc; i++) {
        hres = to_uint32(ctx, argv[i], &code);
        if(FAILED(hres)) {
            jsstr_release(ret);
            return hres;
        }

        ret_str[i] = code;
    }

    if(r)
        *r = jsval_string(ret);
    else
        jsstr_release(ret);
    return S_OK;
}
