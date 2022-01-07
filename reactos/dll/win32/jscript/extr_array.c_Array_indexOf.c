
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
typedef int BOOL ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_length (int *,int *,int **,unsigned int*) ;
 int jsdisp_get_idx (int *,unsigned int,int *) ;
 int jsval_number (int) ;
 int jsval_release (int ) ;
 int jsval_strict_equal (int ,int ,int *) ;
 int jsval_undefined () ;
 unsigned int max (double,int ) ;
 unsigned int min (double,unsigned int) ;
 int to_integer (int *,int ,double*) ;

__attribute__((used)) static HRESULT Array_indexOf(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    unsigned length, i, from = 0;
    jsval_t search, value;
    BOOL eq;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;
    if(!length) {
        if(r) *r = jsval_number(-1);
        return S_OK;
    }

    search = argc ? argv[0] : jsval_undefined();

    if(argc > 1) {
        double from_arg;

        hres = to_integer(ctx, argv[1], &from_arg);
        if(FAILED(hres))
            return hres;

        if(from_arg >= 0)
            from = min(from_arg, length);
        else
            from = max(from_arg + length, 0);
    }

    for(i = from; i < length; i++) {
        hres = jsdisp_get_idx(jsthis, i, &value);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FAILED(hres))
            return hres;

        hres = jsval_strict_equal(value, search, &eq);
        jsval_release(value);
        if(FAILED(hres))
            return hres;
        if(eq) {
            if(r) *r = jsval_number(i);
            return S_OK;
        }
    }

    if(r) *r = jsval_number(-1);
    return S_OK;
}
