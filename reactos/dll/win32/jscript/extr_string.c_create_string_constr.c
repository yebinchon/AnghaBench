
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_3__ {int dispex; } ;
typedef TYPE_1__ StringInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int StringConstr_info ;
 int StringConstr_value ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;
 int jsstr_empty () ;
 int string_alloc (int *,int *,int ,TYPE_1__**) ;

HRESULT create_string_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    StringInstance *string;
    HRESULT hres;

    static const WCHAR StringW[] = {'S','t','r','i','n','g',0};

    hres = string_alloc(ctx, object_prototype, jsstr_empty(), &string);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, StringConstr_value, StringW, &StringConstr_info,
            PROPF_CONSTR|1, &string->dispex, ret);

    jsdisp_release(&string->dispex);
    return hres;
}
