
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_4__ {int ip; } ;



__attribute__((used)) static inline void jmp_next(script_ctx_t *ctx)
{
    ctx->call_ctx->ip++;
}
