
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int regexp_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
struct TYPE_10__ {int dispex; } ;
typedef TYPE_2__ RegExpInstance ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int RegExpInst_info ;
 int RegExp_info ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_dispex (int *,TYPE_1__*,int *,int *) ;
 int init_dispex_from_constr (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT alloc_regexp(script_ctx_t *ctx, jsdisp_t *object_prototype, RegExpInstance **ret)
{
    RegExpInstance *regexp;
    HRESULT hres;

    regexp = heap_alloc_zero(sizeof(RegExpInstance));
    if(!regexp)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = init_dispex(&regexp->dispex, ctx, &RegExp_info, object_prototype);
    else
        hres = init_dispex_from_constr(&regexp->dispex, ctx, &RegExpInst_info, ctx->regexp_constr);

    if(FAILED(hres)) {
        heap_free(regexp);
        return hres;
    }

    *ret = regexp;
    return S_OK;
}
