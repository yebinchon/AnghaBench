
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_lavc_priv {int current_pts; int avctx; int * subs; } ;
struct sd {struct sd_lavc_priv* priv; } ;


 int MAX_QUEUE ;
 int MP_NOPTS_VALUE ;
 int avcodec_flush_buffers (int ) ;
 int clear_sub (int *) ;

__attribute__((used)) static void reset(struct sd *sd)
{
    struct sd_lavc_priv *priv = sd->priv;

    for (int n = 0; n < MAX_QUEUE; n++)
        clear_sub(&priv->subs[n]);

    avcodec_flush_buffers(priv->avctx);

    priv->current_pts = MP_NOPTS_VALUE;
}
