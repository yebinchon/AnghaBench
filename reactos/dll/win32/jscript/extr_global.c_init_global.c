
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int version; scalar_t__ global; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int ActiveXObjectW ;
 scalar_t__ FAILED (int ) ;
 int INFINITY ;
 int InfinityW ;
 int JSGlobal_info ;
 int JSONW ;
 int MathW ;
 int NAN ;
 int NaNW ;
 unsigned int PROPF_WRITABLE ;
 int SCRIPTLANGUAGEVERSION_ES5 ;
 int S_OK ;
 int create_activex_constr (TYPE_1__*,int **) ;
 int create_dispex (TYPE_1__*,int *,int *,scalar_t__*) ;
 int create_json (TYPE_1__*,int **) ;
 int create_math (TYPE_1__*,int **) ;
 int create_object_prototype (TYPE_1__*,int **) ;
 int init_constructors (TYPE_1__*,int *) ;
 int jsdisp_define_data_property (scalar_t__,int ,unsigned int,int ) ;
 int jsdisp_release (int *) ;
 int jsval_number (int ) ;
 int jsval_obj (int *) ;
 int jsval_undefined () ;
 int undefinedW ;

HRESULT init_global(script_ctx_t *ctx)
{
    unsigned const_flags = ctx->version >= SCRIPTLANGUAGEVERSION_ES5 ? 0 : PROPF_WRITABLE;
    jsdisp_t *math, *object_prototype, *constr;
    HRESULT hres;

    if(ctx->global)
        return S_OK;

    hres = create_dispex(ctx, &JSGlobal_info, ((void*)0), &ctx->global);
    if(FAILED(hres))
        return hres;

    hres = create_object_prototype(ctx, &object_prototype);
    if(FAILED(hres))
        return hres;

    hres = init_constructors(ctx, object_prototype);
    jsdisp_release(object_prototype);
    if(FAILED(hres))
        return hres;

    hres = create_math(ctx, &math);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, MathW, PROPF_WRITABLE, jsval_obj(math));
    jsdisp_release(math);
    if(FAILED(hres))
        return hres;

    if(ctx->version >= 2) {
        jsdisp_t *json;

        hres = create_json(ctx, &json);
        if(FAILED(hres))
            return hres;

        hres = jsdisp_define_data_property(ctx->global, JSONW, PROPF_WRITABLE, jsval_obj(json));
        jsdisp_release(json);
        if(FAILED(hres))
            return hres;
    }

    hres = create_activex_constr(ctx, &constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, ActiveXObjectW, PROPF_WRITABLE,
                                       jsval_obj(constr));
    jsdisp_release(constr);
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, undefinedW, const_flags, jsval_undefined());
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, NaNW, const_flags, jsval_number(NAN));
    if(FAILED(hres))
        return hres;

    hres = jsdisp_define_data_property(ctx->global, InfinityW, const_flags, jsval_number(INFINITY));
    return hres;
}
