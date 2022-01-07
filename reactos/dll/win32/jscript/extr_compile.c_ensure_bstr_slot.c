
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* code; } ;
typedef TYPE_2__ compiler_ctx_t ;
struct TYPE_4__ {int bstr_pool_size; int bstr_cnt; int * bstr_pool; } ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int * heap_alloc (int) ;
 int * heap_realloc (int *,int) ;

__attribute__((used)) static BOOL ensure_bstr_slot(compiler_ctx_t *ctx)
{
    if(!ctx->code->bstr_pool_size) {
        ctx->code->bstr_pool = heap_alloc(8 * sizeof(BSTR));
        if(!ctx->code->bstr_pool)
            return FALSE;
        ctx->code->bstr_pool_size = 8;
    }else if(ctx->code->bstr_pool_size == ctx->code->bstr_cnt) {
        BSTR *new_pool;

        new_pool = heap_realloc(ctx->code->bstr_pool, ctx->code->bstr_pool_size*2*sizeof(BSTR));
        if(!new_pool)
            return FALSE;

        ctx->code->bstr_pool = new_pool;
        ctx->code->bstr_pool_size *= 2;
    }

    return TRUE;
}
