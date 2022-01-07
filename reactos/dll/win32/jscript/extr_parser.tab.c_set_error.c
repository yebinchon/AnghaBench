
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hres; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef int UINT ;



__attribute__((used)) static void set_error(parser_ctx_t *ctx, UINT error)
{
    ctx->hres = error;
}
