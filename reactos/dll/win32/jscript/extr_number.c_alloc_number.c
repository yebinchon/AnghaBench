
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int number_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int dispex; } ;
typedef TYPE_2__ NumberInstance ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int NumberInst_info ;
 int Number_info ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT alloc_number(script_ctx_t *ctx, jsdisp_t *object_prototype, NumberInstance **ret)
{
    NumberInstance *number;
    HRESULT hres;

    number = heap_alloc_zero(sizeof(NumberInstance));
    if(!number)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&number->dispex, ctx, &Number_info, object_prototype);
    else
        hres = init_dispex_from_constr(&number->dispex, ctx, &NumberInst_info, ctx->number_constr);
    if(FAILED(hres)) {
        heap_free(number);
        return hres;
    }

    *ret = number;
    return S_OK;
}
