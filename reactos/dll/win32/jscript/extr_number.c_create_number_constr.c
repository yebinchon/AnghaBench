
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_3__ {int dispex; scalar_t__ value; } ;
typedef TYPE_1__ NumberInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int NumberConstr_value ;
 int PROPF_CONSTR ;
 int alloc_number (int *,int *,TYPE_1__**) ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_number_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    NumberInstance *number;
    HRESULT hres;

    static const WCHAR NumberW[] = {'N','u','m','b','e','r',0};

    hres = alloc_number(ctx, object_prototype, &number);
    if(FAILED(hres))
        return hres;

    number->value = 0;
    hres = create_builtin_constructor(ctx, NumberConstr_value, NumberW, ((void*)0),
            PROPF_CONSTR|1, &number->dispex, ret);

    jsdisp_release(&number->dispex);
    return hres;
}
