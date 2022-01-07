
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_ctx {int num_sources; int * sources; } ;



__attribute__((used)) static bool missing(struct tl_ctx *ctx)
{
    for (int i = 0; i < ctx->num_sources; i++) {
        if (!ctx->sources[i])
            return 1;
    }
    return 0;
}
