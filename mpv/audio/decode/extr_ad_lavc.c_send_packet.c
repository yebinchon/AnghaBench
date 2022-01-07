
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ next_pts; int codec_timebase; int * avctx; } ;
struct mp_filter {struct priv* priv; } ;
struct demux_packet {scalar_t__ pts; } ;
typedef int AVPacket ;
typedef int AVCodecContext ;


 int MP_ERR (struct mp_filter*,char*) ;
 scalar_t__ MP_NOPTS_VALUE ;
 int avcodec_send_packet (int *,int *) ;
 int mp_set_av_packet (int *,struct demux_packet*,int *) ;

__attribute__((used)) static int send_packet(struct mp_filter *da, struct demux_packet *mpkt)
{
    struct priv *priv = da->priv;
    AVCodecContext *avctx = priv->avctx;




    if (mpkt && priv->next_pts == MP_NOPTS_VALUE)
        priv->next_pts = mpkt->pts;

    AVPacket pkt;
    mp_set_av_packet(&pkt, mpkt, &priv->codec_timebase);

    int ret = avcodec_send_packet(avctx, mpkt ? &pkt : ((void*)0));
    if (ret < 0)
        MP_ERR(da, "Error decoding audio.\n");
    return ret;
}
