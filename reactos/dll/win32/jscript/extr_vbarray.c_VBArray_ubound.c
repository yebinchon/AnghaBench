
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_3__ {int safearray; } ;
typedef TYPE_1__ VBArrayInstance ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DISP_E_BADINDEX ;
 scalar_t__ FAILED (scalar_t__) ;
 int JS_E_SUBSCRIPT_OUT_OF_RANGE ;
 int JS_E_VBARRAY_EXPECTED ;
 scalar_t__ S_OK ;
 scalar_t__ SafeArrayGetUBound (int ,int,int*) ;
 int TRACE (char*) ;
 int jsval_number (int) ;
 scalar_t__ throw_range_error (int *,int ,int *) ;
 scalar_t__ throw_type_error (int *,int ,int *) ;
 scalar_t__ to_int32 (int *,int ,int*) ;
 TYPE_1__* vbarray_this (int *) ;

__attribute__((used)) static HRESULT VBArray_ubound(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    int dim;
    HRESULT hres;

    TRACE("\n");

    vbarray = vbarray_this(vthis);
    if(!vbarray)
        return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

    if(argc) {
        hres = to_int32(ctx, argv[0], &dim);
        if(FAILED(hres))
            return hres;
    } else
        dim = 1;

    hres = SafeArrayGetUBound(vbarray->safearray, dim, &dim);
    if(hres == DISP_E_BADINDEX)
        return throw_range_error(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, ((void*)0));
    else if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_number(dim);
    return S_OK;
}
