
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
typedef TYPE_1__ ArrayInstance ;


 int ArrayConstr_info ;
 int ArrayConstr_value ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int alloc_array (int *,int *,TYPE_1__**) ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_array_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    ArrayInstance *array;
    HRESULT hres;

    static const WCHAR ArrayW[] = {'A','r','r','a','y',0};

    hres = alloc_array(ctx, object_prototype, &array);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, ArrayConstr_value, ArrayW, &ArrayConstr_info, PROPF_CONSTR|1, &array->dispex, ret);

    jsdisp_release(&array->dispex);
    return hres;
}
