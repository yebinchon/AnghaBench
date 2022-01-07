
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_5__ {TYPE_1__* code; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int WCHAR ;
struct TYPE_4__ {int str_pool_size; int str_cnt; int ** str_pool; } ;


 int ** heap_alloc (int) ;
 int ** heap_realloc (int **,int) ;
 int * jsstr_alloc_len (int const*,unsigned int) ;

jsstr_t *compiler_alloc_string_len(compiler_ctx_t *ctx, const WCHAR *str, unsigned len)
{
    jsstr_t *new_str;

    if(!ctx->code->str_pool_size) {
        ctx->code->str_pool = heap_alloc(8 * sizeof(jsstr_t*));
        if(!ctx->code->str_pool)
            return ((void*)0);
        ctx->code->str_pool_size = 8;
    }else if(ctx->code->str_pool_size == ctx->code->str_cnt) {
        jsstr_t **new_pool;

        new_pool = heap_realloc(ctx->code->str_pool, ctx->code->str_pool_size*2*sizeof(jsstr_t*));
        if(!new_pool)
            return ((void*)0);

        ctx->code->str_pool = new_pool;
        ctx->code->str_pool_size *= 2;
    }

    new_str = jsstr_alloc_len(str, len);
    if(!new_str)
        return ((void*)0);

    ctx->code->str_pool[ctx->code->str_cnt++] = new_str;
    return new_str;
}
