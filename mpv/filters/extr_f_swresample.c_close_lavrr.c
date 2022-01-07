
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pool_fmt; int avrctx_fmt; int pre_out_fmt; scalar_t__ avrctx_out; scalar_t__ avrctx; } ;


 int TA_FREEP (int *) ;
 int avresample_close (scalar_t__) ;
 int avresample_free (scalar_t__*) ;

__attribute__((used)) static void close_lavrr(struct priv *p)
{
    if (p->avrctx)
        avresample_close(p->avrctx);
    avresample_free(&p->avrctx);
    if (p->avrctx_out)
        avresample_close(p->avrctx_out);
    avresample_free(&p->avrctx_out);

    TA_FREEP(&p->pre_out_fmt);
    TA_FREEP(&p->avrctx_fmt);
    TA_FREEP(&p->pool_fmt);
}
