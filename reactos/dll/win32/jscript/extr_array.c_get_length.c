
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * jsdisp; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int length; int dispex; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_3__ ArrayInstance ;


 scalar_t__ FAILED (int ) ;
 int JS_E_JSCRIPT_EXPECTED ;
 int S_OK ;
 TYPE_3__* array_this (TYPE_2__*) ;
 int is_jsdisp (TYPE_2__*) ;
 int jsdisp_propget_name (int *,int ,int *) ;
 int jsval_release (int ) ;
 int lengthW ;
 int throw_type_error (int *,int ,int *) ;
 int to_uint32 (int *,int ,int *) ;

__attribute__((used)) static HRESULT get_length(script_ctx_t *ctx, vdisp_t *vdisp, jsdisp_t **jsthis, DWORD *ret)
{
    ArrayInstance *array;
    jsval_t val;
    HRESULT hres;

    array = array_this(vdisp);
    if(array) {
        *jsthis = &array->dispex;
        *ret = array->length;
        return S_OK;
    }

    if(!is_jsdisp(vdisp))
        return throw_type_error(ctx, JS_E_JSCRIPT_EXPECTED, ((void*)0));

    hres = jsdisp_propget_name(vdisp->u.jsdisp, lengthW, &val);
    if(FAILED(hres))
        return hres;

    hres = to_uint32(ctx, val, ret);
    jsval_release(val);
    if(FAILED(hres))
        return hres;

    *jsthis = vdisp->u.jsdisp;
    return S_OK;
}
