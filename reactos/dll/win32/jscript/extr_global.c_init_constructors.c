
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int vbarray_constr; int global; int string_constr; int regexp_constr; int number_constr; int uri_error_constr; int type_error_constr; int syntax_error_constr; int regexp_error_constr; int reference_error_constr; int range_error_constr; int eval_error_constr; int error_constr; int enumerator_constr; int date_constr; int bool_constr; int array_constr; int object_constr; int function_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int ArrayW ;
 int BooleanW ;
 int DateW ;
 int EnumeratorW ;
 int ErrorW ;
 int EvalErrorW ;
 scalar_t__ FAILED (int ) ;
 int FunctionW ;
 int NumberW ;
 int ObjectW ;
 int PROPF_WRITABLE ;
 int RangeErrorW ;
 int ReferenceErrorW ;
 int RegExpErrorW ;
 int RegExpW ;
 int S_OK ;
 int StringW ;
 int SyntaxErrorW ;
 int TypeErrorW ;
 int URIErrorW ;
 int VBArrayW ;
 int create_array_constr (TYPE_1__*,int *,int *) ;
 int create_bool_constr (TYPE_1__*,int *,int *) ;
 int create_date_constr (TYPE_1__*,int *,int *) ;
 int create_enumerator_constr (TYPE_1__*,int *,int *) ;
 int create_number_constr (TYPE_1__*,int *,int *) ;
 int create_object_constr (TYPE_1__*,int *,int *) ;
 int create_regexp_constr (TYPE_1__*,int *,int *) ;
 int create_string_constr (TYPE_1__*,int *,int *) ;
 int create_vbarray_constr (TYPE_1__*,int *,int *) ;
 int init_error_constr (TYPE_1__*,int *) ;
 int init_function_constr (TYPE_1__*,int *) ;
 int jsdisp_define_data_property (int ,int ,int ,int ) ;
 int jsval_obj (int ) ;

__attribute__((used)) static HRESULT init_constructors(script_ctx_t *ctx, jsdisp_t *object_prototype)
{
    HRESULT hres;

    hres = init_function_constr(ctx, object_prototype);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, FunctionW, PROPF_WRITABLE,
                                       jsval_obj(ctx->function_constr));
    if(FAILED(hres))
        return hres;

    hres = create_object_constr(ctx, object_prototype, &ctx->object_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, ObjectW, PROPF_WRITABLE,
                                       jsval_obj(ctx->object_constr));
    if(FAILED(hres))
        return hres;

    hres = create_array_constr(ctx, object_prototype, &ctx->array_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, ArrayW, PROPF_WRITABLE,
                                       jsval_obj(ctx->array_constr));
    if(FAILED(hres))
        return hres;

    hres = create_bool_constr(ctx, object_prototype, &ctx->bool_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, BooleanW, PROPF_WRITABLE,
                                       jsval_obj(ctx->bool_constr));
    if(FAILED(hres))
        return hres;

    hres = create_date_constr(ctx, object_prototype, &ctx->date_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, DateW, PROPF_WRITABLE,
                                       jsval_obj(ctx->date_constr));
    if(FAILED(hres))
        return hres;

    hres = create_enumerator_constr(ctx, object_prototype, &ctx->enumerator_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, EnumeratorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->enumerator_constr));
    if(FAILED(hres))
        return hres;

    hres = init_error_constr(ctx, object_prototype);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, ErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, EvalErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->eval_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, RangeErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->range_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, ReferenceErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->reference_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, RegExpErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->regexp_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, SyntaxErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->syntax_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, TypeErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->type_error_constr));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, URIErrorW, PROPF_WRITABLE,
                                       jsval_obj(ctx->uri_error_constr));
    if(FAILED(hres))
        return hres;

    hres = create_number_constr(ctx, object_prototype, &ctx->number_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, NumberW, PROPF_WRITABLE,
                                       jsval_obj(ctx->number_constr));
    if(FAILED(hres))
        return hres;

    hres = create_regexp_constr(ctx, object_prototype, &ctx->regexp_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, RegExpW, PROPF_WRITABLE,
                                       jsval_obj(ctx->regexp_constr));
    if(FAILED(hres))
        return hres;

    hres = create_string_constr(ctx, object_prototype, &ctx->string_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, StringW, PROPF_WRITABLE,
                                       jsval_obj(ctx->string_constr));
    if(FAILED(hres))
        return hres;

    hres = create_vbarray_constr(ctx, object_prototype, &ctx->vbarray_constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, VBArrayW, PROPF_WRITABLE,
                                       jsval_obj(ctx->vbarray_constr));
    if(FAILED(hres))
        return hres;

    return S_OK;
}
