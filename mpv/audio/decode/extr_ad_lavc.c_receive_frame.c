
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_13__ {scalar_t__ num; } ;
struct priv {double next_pts; scalar_t__ skip_samples; scalar_t__ trim_samples; int preroll_done; TYPE_4__* avframe; TYPE_3__ force_channel_map; int codec_timebase; TYPE_2__* avctx; } ;
struct mp_frame {int dummy; } ;
struct mp_filter {struct priv* priv; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_14__ {int flags; int pts; int * buf; } ;
struct TYPE_12__ {scalar_t__ delay; } ;
struct TYPE_11__ {int size; char* data; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_FRAME_DATA_SKIP_SAMPLES ;
 int AV_FRAME_FLAG_DISCARD ;
 scalar_t__ AV_RL32 (char*) ;
 int EAGAIN ;
 struct mp_frame MAKE_FRAME (int ,struct mp_aframe*) ;
 scalar_t__ MPMIN (scalar_t__,scalar_t__) ;
 int MP_ERR (struct mp_filter*,char*) ;
 int MP_FRAME_AUDIO ;
 double MP_NOPTS_VALUE ;
 TYPE_1__* av_frame_get_side_data (TYPE_4__*,int ) ;
 int av_frame_unref (TYPE_4__*) ;
 int avcodec_flush_buffers (TYPE_2__*) ;
 int avcodec_receive_frame (TYPE_2__*,TYPE_4__*) ;
 double mp_aframe_end_pts (struct mp_aframe*) ;
 struct mp_aframe* mp_aframe_from_avframe (TYPE_4__*) ;
 scalar_t__ mp_aframe_get_size (struct mp_aframe*) ;
 int mp_aframe_set_chmap (struct mp_aframe*,TYPE_3__*) ;
 int mp_aframe_set_pts (struct mp_aframe*,double) ;
 int mp_aframe_set_size (struct mp_aframe*,scalar_t__) ;
 int mp_aframe_skip_samples (struct mp_aframe*,scalar_t__) ;
 double mp_pts_from_av (int ,int *) ;
 int talloc_free (struct mp_aframe*) ;

__attribute__((used)) static int receive_frame(struct mp_filter *da, struct mp_frame *out)
{
    struct priv *priv = da->priv;
    AVCodecContext *avctx = priv->avctx;

    int ret = avcodec_receive_frame(avctx, priv->avframe);

    if (ret == AVERROR_EOF) {



        avcodec_flush_buffers(priv->avctx);
        return ret;
    } else if (ret < 0 && ret != AVERROR(EAGAIN)) {
        MP_ERR(da, "Error decoding audio.\n");
    }






    if (!priv->avframe->buf[0])
        return ret;

    double out_pts = mp_pts_from_av(priv->avframe->pts, &priv->codec_timebase);

    struct mp_aframe *mpframe = mp_aframe_from_avframe(priv->avframe);
    if (!mpframe) {
        MP_ERR(da, "Converting libavcodec frame to mpv frame failed.\n");
        return ret;
    }

    if (priv->force_channel_map.num)
        mp_aframe_set_chmap(mpframe, &priv->force_channel_map);

    if (out_pts == MP_NOPTS_VALUE)
        out_pts = priv->next_pts;
    mp_aframe_set_pts(mpframe, out_pts);

    priv->next_pts = mp_aframe_end_pts(mpframe);
    if (!priv->preroll_done) {

        if (!priv->skip_samples)
            priv->skip_samples = avctx->delay;
        priv->preroll_done = 1;
    }

    uint32_t skip = MPMIN(priv->skip_samples, mp_aframe_get_size(mpframe));
    if (skip) {
        mp_aframe_skip_samples(mpframe, skip);
        priv->skip_samples -= skip;
    }
    uint32_t trim = MPMIN(priv->trim_samples, mp_aframe_get_size(mpframe));
    if (trim) {
        mp_aframe_set_size(mpframe, mp_aframe_get_size(mpframe) - trim);
        priv->trim_samples -= trim;
    }

    if (mp_aframe_get_size(mpframe) > 0) {
        *out = MAKE_FRAME(MP_FRAME_AUDIO, mpframe);
    } else {
        talloc_free(mpframe);
    }

    av_frame_unref(priv->avframe);

    return ret;
}
