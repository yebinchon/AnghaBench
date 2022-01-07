
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef double DWORD ;


 scalar_t__ FAILED (int ) ;
 int NAN ;
 int S_OK ;
 int TRACE (char*) ;
 int get_string_val (int *,int *,int **) ;
 int is_int32 (double) ;
 int jsstr_extract (int *,double,int,int *) ;
 double jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_number (int ) ;
 int to_integer (int *,int ,double*) ;

__attribute__((used)) static HRESULT String_charCodeAt(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str;
    DWORD idx = 0;
    HRESULT hres;

    TRACE("\n");

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    if(argc > 0) {
        double d;

        hres = to_integer(ctx, argv[0], &d);
        if(FAILED(hres)) {
            jsstr_release(str);
            return hres;
        }

        if(!is_int32(d) || d < 0 || d >= jsstr_length(str)) {
            jsstr_release(str);
            if(r)
                *r = jsval_number(NAN);
            return S_OK;
        }

        idx = d;
    }

    if(r) {
        WCHAR c;
        jsstr_extract(str, idx, 1, &c);
        *r = jsval_number(c);
    }

    jsstr_release(str);
    return S_OK;
}
