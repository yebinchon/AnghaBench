
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int DateConstr_info ;
 int DateConstr_value ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONSTR ;
 int create_builtin_constructor (int *,int ,char const*,int *,int,int *,int **) ;
 int create_date (int *,int *,double,int **) ;
 int jsdisp_release (int *) ;

HRESULT create_date_constr(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    jsdisp_t *date;
    HRESULT hres;

    static const WCHAR DateW[] = {'D','a','t','e',0};

    hres = create_date(ctx, object_prototype, 0.0, &date);
    if(FAILED(hres))
        return hres;

    hres = create_builtin_constructor(ctx, DateConstr_value, DateW, &DateConstr_info,
            PROPF_CONSTR|7, date, ret);

    jsdisp_release(date);
    return hres;
}
