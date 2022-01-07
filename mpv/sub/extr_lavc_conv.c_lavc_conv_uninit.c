
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavc_conv {int avctx; int cur; } ;


 int avcodec_free_context (int *) ;
 int avsubtitle_free (int *) ;
 int talloc_free (struct lavc_conv*) ;

void lavc_conv_uninit(struct lavc_conv *priv)
{
    avsubtitle_free(&priv->cur);
    avcodec_free_context(&priv->avctx);
    talloc_free(priv);
}
