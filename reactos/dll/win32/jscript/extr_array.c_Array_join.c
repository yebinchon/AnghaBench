
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int array_join (int *,int *,int ,int const*,int ,int *) ;
 int const* default_separatorW ;
 int get_length (int *,int *,int **,int *) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int lstrlenW (int const*) ;
 int to_flat_string (int *,int ,int **,int const**) ;

__attribute__((used)) static HRESULT Array_join(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    DWORD length;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    if(argc) {
        const WCHAR *sep;
        jsstr_t *sep_str;

        hres = to_flat_string(ctx, argv[0], &sep_str, &sep);
        if(FAILED(hres))
            return hres;

        hres = array_join(ctx, jsthis, length, sep, jsstr_length(sep_str), r);

        jsstr_release(sep_str);
    }else {
        hres = array_join(ctx, jsthis, length, default_separatorW, lstrlenW(default_separatorW), r);
    }

    return hres;
}
