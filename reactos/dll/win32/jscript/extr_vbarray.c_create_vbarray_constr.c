
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_3__ {int dispex; } ;
typedef TYPE_1__ VBArrayInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int VBArrayConstr_value ;
 int alloc_vbarray (int *,int *,TYPE_1__**) ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_vbarray_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    VBArrayInstance *vbarray;
    HRESULT hres;

    static const WCHAR VBArrayW[] = {'V','B','A','r','r','a','y',0};

    hres = alloc_vbarray(ctx, object_prototype, &vbarray);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, VBArrayConstr_value, VBArrayW, ((void*)0), PROPF_CONSTR|1, &vbarray->dispex, ret);

    jsdisp_release(&vbarray->dispex);
    return hres;
}
