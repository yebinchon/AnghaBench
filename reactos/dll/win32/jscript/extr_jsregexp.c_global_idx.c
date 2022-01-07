
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* match_parens; int last_match; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
struct TYPE_4__ {int length; int index; } ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * jsstr_substr (int ,int ,int ) ;
 int jsval_string (int *) ;

__attribute__((used)) static HRESULT global_idx(script_ctx_t *ctx, DWORD idx, jsval_t *r)
{
    jsstr_t *ret;

    ret = jsstr_substr(ctx->last_match, ctx->match_parens[idx].index, ctx->match_parens[idx].length);
    if(!ret)
        return E_OUTOFMEMORY;

    *r = jsval_string(ret);
    return S_OK;
}
