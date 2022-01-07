
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int heap; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int DWORD ;


 void* heap_pool_alloc (int *,int ) ;

__attribute__((used)) static inline void *parser_alloc(parser_ctx_t *ctx, DWORD size)
{
    return heap_pool_alloc(&ctx->heap, size);
}
