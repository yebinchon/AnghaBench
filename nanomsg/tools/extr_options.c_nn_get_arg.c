
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {int * arg; int data; scalar_t__ args_left; } ;



__attribute__((used)) static int nn_get_arg (struct nn_parse_context *ctx)
{
    if (!ctx->args_left)
        return 0;
    ctx->args_left -= 1;
    ctx->arg += 1;
    ctx->data = *ctx->arg;
    return 1;
}
