
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* spirv; } ;
struct priv {int compiler; int opts; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int shaderc_compile_options_release (int ) ;
 int shaderc_compiler_release (int ) ;

__attribute__((used)) static void shaderc_uninit(struct ra_ctx *ctx)
{
    struct priv *p = ctx->spirv->priv;
    if (!p)
        return;

    shaderc_compile_options_release(p->opts);
    shaderc_compiler_release(p->compiler);
}
