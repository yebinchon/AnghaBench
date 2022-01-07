
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
typedef int VARIANT ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DISP_E_BADINDEX ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int JS_E_SUBSCRIPT_OUT_OF_RANGE ;
 int JS_E_VBARRAY_EXPECTED ;
 unsigned int SafeArrayGetDim (int ) ;
 scalar_t__ SafeArrayGetElement (int ,int*,void*) ;
 int TRACE (char*) ;
 int VariantClear (int *) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 scalar_t__ throw_range_error (int *,int ,int *) ;
 scalar_t__ throw_type_error (int *,int ,int *) ;
 scalar_t__ to_int32 (int *,int ,int*) ;
 scalar_t__ variant_to_jsval (int *,int *) ;
 TYPE_1__* vbarray_this (int *) ;

__attribute__((used)) static HRESULT VBArray_getItem(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    int i, *indexes;
    VARIANT out;
    HRESULT hres;

    TRACE("\n");

    vbarray = vbarray_this(vthis);
    if(!vbarray)
        return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

    if(argc < SafeArrayGetDim(vbarray->safearray))
        return throw_range_error(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, ((void*)0));

    indexes = heap_alloc(sizeof(int)*argc);
    if(!indexes)
        return E_OUTOFMEMORY;

    for(i=0; i<argc; i++) {
        hres = to_int32(ctx, argv[i], indexes+i);
        if(FAILED(hres)) {
            heap_free(indexes);
            return hres;
        }
    }

    hres = SafeArrayGetElement(vbarray->safearray, indexes, (void*)&out);
    heap_free(indexes);
    if(hres == DISP_E_BADINDEX)
        return throw_range_error(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, ((void*)0));
    else if(FAILED(hres))
        return hres;

    if(r) {
        hres = variant_to_jsval(&out, r);
        VariantClear(&out);
    }
    return hres;
}
