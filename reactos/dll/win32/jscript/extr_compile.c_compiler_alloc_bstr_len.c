
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* code; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int WCHAR ;
struct TYPE_5__ {size_t bstr_cnt; int ** bstr_pool; } ;
typedef int * BSTR ;


 int * SysAllocStringLen (int const*,size_t) ;
 int ensure_bstr_slot (TYPE_2__*) ;

__attribute__((used)) static BSTR compiler_alloc_bstr_len(compiler_ctx_t *ctx, const WCHAR *str, size_t len)
{
    if(!ensure_bstr_slot(ctx))
        return ((void*)0);

    ctx->code->bstr_pool[ctx->code->bstr_cnt] = SysAllocStringLen(str, len);
    if(!ctx->code->bstr_pool[ctx->code->bstr_cnt])
        return ((void*)0);

    return ctx->code->bstr_pool[ctx->code->bstr_cnt++];
}
