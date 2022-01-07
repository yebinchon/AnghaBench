
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
typedef int DWORD ;
typedef int DOUBLE ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int create_array (int *,int ,int **) ;
 int floor (int ) ;
 int get_length (int *,int *,int **,int *) ;
 scalar_t__ isnan (int ) ;
 int jsdisp_get_idx (int *,int ,int *) ;
 int jsdisp_propput_idx (int *,int ,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int to_number (int *,int ,int *) ;

__attribute__((used)) static HRESULT Array_slice(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *arr, *jsthis;
    DOUBLE range;
    DWORD length, start, end, idx;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    if(argc) {
        hres = to_number(ctx, argv[0], &range);
        if(FAILED(hres))
            return hres;

        range = floor(range);
        if(-range>length || isnan(range)) start = 0;
        else if(range < 0) start = range+length;
        else if(range <= length) start = range;
        else start = length;
    }
    else start = 0;

    if(argc > 1) {
        hres = to_number(ctx, argv[1], &range);
        if(FAILED(hres))
            return hres;

        range = floor(range);
        if(-range>length) end = 0;
        else if(range < 0) end = range+length;
        else if(range <= length) end = range;
        else end = length;
    }
    else end = length;

    hres = create_array(ctx, (end>start)?end-start:0, &arr);
    if(FAILED(hres))
        return hres;

    for(idx=start; idx<end; idx++) {
        jsval_t v;

        hres = jsdisp_get_idx(jsthis, idx, &v);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;

        if(SUCCEEDED(hres)) {
            hres = jsdisp_propput_idx(arr, idx-start, v);
            jsval_release(v);
        }

        if(FAILED(hres)) {
            jsdisp_release(arr);
            return hres;
        }
    }

    if(r)
        *r = jsval_obj(arr);
    else
        jsdisp_release(arr);

    return S_OK;
}
