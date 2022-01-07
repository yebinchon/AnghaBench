
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
typedef int HRESULT ;


 int JS_E_VBARRAY_EXPECTED ;
 int S_OK ;
 int SafeArrayGetDim (int ) ;
 int TRACE (char*) ;
 int jsval_number (int ) ;
 int throw_type_error (int *,int ,int *) ;
 TYPE_1__* vbarray_this (int *) ;

__attribute__((used)) static HRESULT VBArray_dimensions(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;

    TRACE("\n");

    vbarray = vbarray_this(vthis);
    if(!vbarray)
        return throw_type_error(ctx, JS_E_VBARRAY_EXPECTED, ((void*)0));

    if(r)
        *r = jsval_number(SafeArrayGetDim(vbarray->safearray));
    return S_OK;
}
