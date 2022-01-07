
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {scalar_t__ length; int dispex; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ DOUBLE ;
typedef TYPE_1__ ArrayInstance ;


 scalar_t__ FAILED (int ) ;
 int JS_E_INVALID_LENGTH ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,scalar_t__) ;
 TYPE_1__* array_from_jsdisp (int *) ;
 scalar_t__ floor (scalar_t__) ;
 int jsdisp_delete_idx (int *,scalar_t__) ;
 int throw_range_error (int *,int ,int *) ;
 int to_number (int *,int ,scalar_t__*) ;

__attribute__((used)) static HRESULT Array_set_length(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t value)
{
    ArrayInstance *This = array_from_jsdisp(jsthis);
    DOUBLE len = -1;
    DWORD i;
    HRESULT hres;

    TRACE("%p %d\n", This, This->length);

    hres = to_number(ctx, value, &len);
    if(FAILED(hres))
        return hres;

    len = floor(len);
    if(len!=(DWORD)len)
        return throw_range_error(ctx, JS_E_INVALID_LENGTH, ((void*)0));

    for(i=len; i < This->length; i++) {
        hres = jsdisp_delete_idx(&This->dispex, i);
        if(FAILED(hres))
            return hres;
    }

    This->length = len;
    return S_OK;
}
