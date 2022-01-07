
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reseed_count; scalar_t__ fail; } ;
typedef TYPE_1__ HOOK_CTX ;



__attribute__((used)) static void reset_hook_ctx(HOOK_CTX *ctx)
{
    ctx->fail = 0;
    ctx->reseed_count = 0;
}
