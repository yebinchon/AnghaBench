
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 double NAN ;
 int S_OK ;
 int TRACE (char*) ;
 int date_parse (int *,double*) ;
 int jsstr_release (int *) ;
 int jsval_number (double) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT DateConstr_parse(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *parse_str;
    double n;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    hres = to_string(ctx, argv[0], &parse_str);
    if(FAILED(hres))
        return hres;

    hres = date_parse(parse_str, &n);
    jsstr_release(parse_str);
    if(FAILED(hres))
        return hres;

    *r = jsval_number(n);
    return S_OK;
}
