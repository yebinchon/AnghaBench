
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int dispex; int length; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ ArrayInstance ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int alloc_array (int *,int *,TYPE_1__**) ;

HRESULT create_array(script_ctx_t *ctx, DWORD length, jsdisp_t **ret)
{
    ArrayInstance *array;
    HRESULT hres;

    hres = alloc_array(ctx, ((void*)0), &array);
    if(FAILED(hres))
        return hres;

    array->length = length;

    *ret = &array->dispex;
    return S_OK;
}
