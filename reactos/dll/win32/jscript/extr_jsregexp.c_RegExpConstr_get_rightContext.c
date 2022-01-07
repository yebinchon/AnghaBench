
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ last_match_length; scalar_t__ last_match_index; int last_match; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*) ;
 scalar_t__ jsstr_length (int ) ;
 int * jsstr_substr (int ,scalar_t__,scalar_t__) ;
 int jsval_string (int *) ;

__attribute__((used)) static HRESULT RegExpConstr_get_rightContext(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    jsstr_t *ret;

    TRACE("\n");

    ret = jsstr_substr(ctx->last_match, ctx->last_match_index+ctx->last_match_length,
            jsstr_length(ctx->last_match) - ctx->last_match_index - ctx->last_match_length);
    if(!ret)
        return E_OUTOFMEMORY;

    *r = jsval_string(ret);
    return S_OK;
}
