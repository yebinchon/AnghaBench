
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int enumerator_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int dispex; } ;
typedef int HRESULT ;
typedef TYPE_2__ EnumeratorInstance ;


 int E_OUTOFMEMORY ;
 int EnumeratorInst_info ;
 int Enumerator_info ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT alloc_enumerator(script_ctx_t *ctx, jsdisp_t *object_prototype, EnumeratorInstance **ret)
{
    EnumeratorInstance *enumerator;
    HRESULT hres;

    enumerator = heap_alloc_zero(sizeof(EnumeratorInstance));
    if(!enumerator)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&enumerator->dispex, ctx, &Enumerator_info, object_prototype);
    else
        hres = init_dispex_from_constr(&enumerator->dispex, ctx, &EnumeratorInst_info,
                                       ctx->enumerator_constr);

    if(FAILED(hres))
    {
        heap_free(enumerator);
        return hres;
    }

    *ret = enumerator;
    return S_OK;
}
