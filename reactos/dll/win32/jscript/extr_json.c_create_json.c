
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int JSON_info ;
 int S_OK ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

HRESULT create_json(script_ctx_t *ctx, jsdisp_t **ret)
{
    jsdisp_t *json;
    HRESULT hres;

    json = heap_alloc_zero(sizeof(*json));
    if(!json)
        return E_OUTOFMEMORY;

    hres = init_dispex_from_constr(json, ctx, &JSON_info, ctx->object_constr);
    if(FAILED(hres)) {
        heap_free(json);
        return hres;
    }

    *ret = json;
    return S_OK;
}
