
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_3__ {int dispex; } ;
typedef TYPE_1__ RegExpInstance ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int RegExpConstr_info ;
 int RegExpConstr_value ;
 int alloc_regexp (int *,int *,TYPE_1__**) ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_regexp_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    RegExpInstance *regexp;
    HRESULT hres;

    static const WCHAR RegExpW[] = {'R','e','g','E','x','p',0};

    hres = alloc_regexp(ctx, object_prototype, &regexp);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, RegExpConstr_value, RegExpW, &RegExpConstr_info,
            PROPF_CONSTR|2, &regexp->dispex, ret);

    jsdisp_release(&regexp->dispex);
    return hres;
}
