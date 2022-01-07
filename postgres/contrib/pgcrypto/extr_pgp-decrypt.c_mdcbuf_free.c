
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MDCBufData {TYPE_1__* ctx; } ;
struct TYPE_2__ {int * mdc_ctx; } ;


 int px_free (struct MDCBufData*) ;
 int px_md_free (int *) ;
 int px_memset (struct MDCBufData*,int ,int) ;

__attribute__((used)) static void
mdcbuf_free(void *priv)
{
 struct MDCBufData *st = priv;

 px_md_free(st->ctx->mdc_ctx);
 st->ctx->mdc_ctx = ((void*)0);
 px_memset(st, 0, sizeof(*st));
 px_free(st);
}
