
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
struct TYPE_3__ {int dispex; } ;
typedef TYPE_1__ StringInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int string_alloc (int *,int *,int *,TYPE_1__**) ;

HRESULT create_string(script_ctx_t *ctx, jsstr_t *str, jsdisp_t **ret)
{
    StringInstance *string;
    HRESULT hres;

    hres = string_alloc(ctx, ((void*)0), str, &string);
    if(FAILED(hres))
        return hres;

    *ret = &string->dispex;
    return S_OK;

}
