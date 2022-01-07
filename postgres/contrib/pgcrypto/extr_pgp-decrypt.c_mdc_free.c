
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mdc_ctx; scalar_t__ use_mdcbuf_filter; } ;
typedef TYPE_1__ PGP_Context ;


 int px_md_free (int *) ;

__attribute__((used)) static void
mdc_free(void *priv)
{
 PGP_Context *ctx = priv;

 if (ctx->use_mdcbuf_filter)
  return;
 px_md_free(ctx->mdc_ctx);
 ctx->mdc_ctx = ((void*)0);
}
