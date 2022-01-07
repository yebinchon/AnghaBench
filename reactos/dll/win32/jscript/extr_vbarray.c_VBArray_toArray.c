
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
struct TYPE_3__ {int safearray; } ;
typedef TYPE_1__ VBArrayInstance ;
typedef int VARIANT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_VBARRAY_EXPECTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SafeArrayAccessData (int ,void**) ;
 int SafeArrayGetDim (int ) ;
 int SafeArrayGetLBound (int ,int,int*) ;
 int SafeArrayGetUBound (int ,int,int*) ;
 int SafeArrayUnaccessData (int ) ;
 int TRACE (char*) ;
 int create_array (int *,int ,int **) ;
 int jsdisp_propput_idx (int *,int,int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int jsval_release (int ) ;
 int throw_type_error (int *,int ,int *) ;
 int variant_to_jsval (int *,int *) ;
 TYPE_1__* vbarray_this (int *) ;

__attribute__((used)) static HRESULT VBArray_toArray(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    jsdisp_t *array;
    jsval_t val;
    VARIANT *v;
    int i, size = 1, ubound, lbound;
    HRESULT hres;

    TRACE("\n");

    vbarray = vbarray_this(vthis);
    if(!vbarray)
        return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

    for(i=1; i<=SafeArrayGetDim(vbarray->safearray); i++) {
        SafeArrayGetLBound(vbarray->safearray, i, &lbound);
        SafeArrayGetUBound(vbarray->safearray, i, &ubound);
        size *= ubound-lbound+1;
    }

    hres = SafeArrayAccessData(vbarray->safearray, (void**)&v);
    if(FAILED(hres))
        return hres;

    hres = create_array(ctx, 0, &array);
    if(FAILED(hres)) {
        SafeArrayUnaccessData(vbarray->safearray);
        return hres;
    }

    for(i=0; i<size; i++) {
        hres = variant_to_jsval(v, &val);
        if(SUCCEEDED(hres)) {
            hres = jsdisp_propput_idx(array, i, val);
            jsval_release(val);
        }
        if(FAILED(hres)) {
            SafeArrayUnaccessData(vbarray->safearray);
            jsdisp_release(array);
            return hres;
        }
        v++;
    }

    SafeArrayUnaccessData(vbarray->safearray);

    if(r)
        *r = jsval_obj(array);
    else
        jsdisp_release(array);
    return S_OK;
}
