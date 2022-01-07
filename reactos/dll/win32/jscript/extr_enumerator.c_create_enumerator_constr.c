
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_3__ {int dispex; } ;
typedef int HRESULT ;
typedef TYPE_1__ EnumeratorInstance ;


 int EnumeratorConstr_info ;
 int EnumeratorConstr_value ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int alloc_enumerator (int *,int *,TYPE_1__**) ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_enumerator_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    EnumeratorInstance *enumerator;
    HRESULT hres;
    static const WCHAR EnumeratorW[] = {'E','n','u','m','e','r','a','t','o','r',0};

    hres = alloc_enumerator(ctx, object_prototype, &enumerator);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, EnumeratorConstr_value,
                                     EnumeratorW, &EnumeratorConstr_info,
                                     PROPF_CONSTR|7, &enumerator->dispex, ret);
    jsdisp_release(&enumerator->dispex);

    return hres;
}
