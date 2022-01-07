
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* code; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int WCHAR ;
struct TYPE_6__ {int param_cnt; int * params; } ;
struct TYPE_8__ {TYPE_1__ global_code; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int * compiler_alloc (TYPE_4__*,int) ;
 int parse_arguments (TYPE_2__*,int const*,int *,int*) ;

__attribute__((used)) static HRESULT compile_arguments(compiler_ctx_t *ctx, const WCHAR *args)
{
    HRESULT hres;

    hres = parse_arguments(ctx, args, ((void*)0), &ctx->code->global_code.param_cnt);
    if(FAILED(hres))
        return hres;

    ctx->code->global_code.params = compiler_alloc(ctx->code,
            ctx->code->global_code.param_cnt * sizeof(*ctx->code->global_code.params));
    if(!ctx->code->global_code.params)
        return E_OUTOFMEMORY;

    return parse_arguments(ctx, args, ctx->code->global_code.params, ((void*)0));
}
