
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_lavc_priv {int avctx; int * subs; } ;
struct sd {struct sd_lavc_priv* priv; } ;


 int MAX_QUEUE ;
 int avcodec_free_context (int *) ;
 int clear_sub (int *) ;
 int talloc_free (struct sd_lavc_priv*) ;

__attribute__((used)) static void uninit(struct sd *sd)
{
    struct sd_lavc_priv *priv = sd->priv;

    for (int n = 0; n < MAX_QUEUE; n++)
        clear_sub(&priv->subs[n]);
    avcodec_free_context(&priv->avctx);
    talloc_free(priv);
}
