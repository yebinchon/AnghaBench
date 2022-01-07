
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ buffered; scalar_t__ latency; int playing_final; scalar_t__ buffersize; int outburst; } ;
struct ao {struct priv* priv; } ;


 int AOPLAY_FINAL_CHUNK ;
 int MPMIN (scalar_t__,int) ;
 int resume (struct ao*) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    int accepted;

    resume(ao);

    if (priv->buffered <= 0)
        priv->buffered = priv->latency;

    priv->playing_final = flags & AOPLAY_FINAL_CHUNK;
    if (priv->playing_final) {

        accepted = MPMIN(priv->buffersize - priv->buffered, samples);
    } else {
        int maxbursts = (priv->buffersize - priv->buffered) / priv->outburst;
        int playbursts = samples / priv->outburst;
        int bursts = playbursts > maxbursts ? maxbursts : playbursts;
        accepted = bursts * priv->outburst;
    }
    priv->buffered += accepted;
    return accepted;
}
