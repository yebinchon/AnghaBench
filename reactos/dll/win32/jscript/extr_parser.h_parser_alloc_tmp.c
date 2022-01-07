
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* script; } ;
typedef TYPE_2__ parser_ctx_t ;
struct TYPE_4__ {int tmp_heap; } ;
typedef int DWORD ;


 void* heap_pool_alloc (int *,int ) ;

__attribute__((used)) static inline void *parser_alloc_tmp(parser_ctx_t *ctx, DWORD size)
{
    return heap_pool_alloc(&ctx->script->tmp_heap, size);
}
