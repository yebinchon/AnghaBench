
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int string_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int str; int dispex; } ;
typedef TYPE_2__ StringInstance ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int StringInst_info ;
 int String_info ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;
 int jsstr_addref (int *) ;

__attribute__((used)) static HRESULT string_alloc(script_ctx_t *ctx, jsdisp_t *object_prototype, jsstr_t *str, StringInstance **ret)
{
    StringInstance *string;
    HRESULT hres;

    string = heap_alloc_zero(sizeof(StringInstance));
    if(!string)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&string->dispex, ctx, &String_info, object_prototype);
    else
        hres = init_dispex_from_constr(&string->dispex, ctx, &StringInst_info, ctx->string_constr);
    if(FAILED(hres)) {
        heap_free(string);
        return hres;
    }

    string->str = jsstr_addref(str);
    *ret = string;
    return S_OK;
}
