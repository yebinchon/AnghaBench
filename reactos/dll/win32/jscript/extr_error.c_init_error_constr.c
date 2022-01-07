
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * uri_error_constr; int * type_error_constr; int * syntax_error_constr; int * regexp_error_constr; int * reference_error_constr; int * range_error_constr; int * eval_error_constr; int * error_constr; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int builtin_invoke_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 unsigned int ARRAY_SIZE (char const**) ;
 int E_OUTOFMEMORY ;


 scalar_t__ FAILED (int ) ;
 int PROPF_CONFIGURABLE ;
 int PROPF_CONSTR ;
 int PROPF_WRITABLE ;



 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;



 int alloc_error (TYPE_1__*,int *,int *,int **) ;
 int create_builtin_constructor (TYPE_1__*,int ,char const*,int *,int,int *,int **) ;
 int jsdisp_define_data_property (int *,int ,int,int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_alloc (char const*) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 int nameW ;

HRESULT init_error_constr(script_ctx_t *ctx, jsdisp_t *object_prototype)
{
    static const WCHAR ErrorW[] = {'E','r','r','o','r',0};
    static const WCHAR EvalErrorW[] = {'E','v','a','l','E','r','r','o','r',0};
    static const WCHAR RangeErrorW[] = {'R','a','n','g','e','E','r','r','o','r',0};
    static const WCHAR ReferenceErrorW[] = {'R','e','f','e','r','e','n','c','e','E','r','r','o','r',0};
    static const WCHAR RegExpErrorW[] = {'R','e','g','E','x','p','E','r','r','o','r',0};
    static const WCHAR SyntaxErrorW[] = {'S','y','n','t','a','x','E','r','r','o','r',0};
    static const WCHAR TypeErrorW[] = {'T','y','p','e','E','r','r','o','r',0};
    static const WCHAR URIErrorW[] = {'U','R','I','E','r','r','o','r',0};
    static const WCHAR *names[] = {ErrorW, EvalErrorW, RangeErrorW,
        ReferenceErrorW, RegExpErrorW, SyntaxErrorW, TypeErrorW, URIErrorW};
    jsdisp_t **constr_addr[] = {&ctx->error_constr, &ctx->eval_error_constr,
        &ctx->range_error_constr, &ctx->reference_error_constr, &ctx->regexp_error_constr,
        &ctx->syntax_error_constr, &ctx->type_error_constr,
        &ctx->uri_error_constr};
    static builtin_invoke_t constr_val[] = {135, 134,
        133, 132, 131,
        130, 129, 128};

    jsdisp_t *err;
    unsigned int i;
    jsstr_t *str;
    HRESULT hres;

    for(i=0; i < ARRAY_SIZE(names); i++) {
        hres = alloc_error(ctx, i==0 ? object_prototype : ((void*)0), ((void*)0), &err);
        if(FAILED(hres))
            return hres;

        str = jsstr_alloc(names[i]);
        if(!str) {
            jsdisp_release(err);
            return E_OUTOFMEMORY;
        }

        hres = jsdisp_define_data_property(err, nameW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                           jsval_string(str));
        jsstr_release(str);
        if(SUCCEEDED(hres))
            hres = create_builtin_constructor(ctx, constr_val[i], names[i], ((void*)0),
                    PROPF_CONSTR|1, err, constr_addr[i]);

        jsdisp_release(err);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
