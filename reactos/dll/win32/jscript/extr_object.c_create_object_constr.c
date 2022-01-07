
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ObjectConstr_info ;
 int ObjectConstr_value ;
 int PROPF_CONSTR ;
 int create_builtin_constructor (int *,int ,char const*,int *,int ,int *,int **) ;

HRESULT create_object_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    static const WCHAR ObjectW[] = {'O','b','j','e','c','t',0};

    return create_builtin_constructor(ctx, ObjectConstr_value, ObjectW, &ObjectConstr_info, PROPF_CONSTR,
            object_prototype, ret);
}
