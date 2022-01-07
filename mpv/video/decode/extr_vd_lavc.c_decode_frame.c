
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_delay_queue; int delay_queue; TYPE_2__* pic; int codec_timebase; scalar_t__ hwdec_fail_count; scalar_t__ num_requeue_packets; int * avctx; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_image {void* pkt_duration; void* dts; void* pts; scalar_t__* planes; } ;
struct mp_filter {TYPE_1__* priv; } ;
struct TYPE_7__ {int pkt_duration; int pkt_dts; int pts; int * buf; } ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int MP_TARRAY_APPEND (TYPE_1__*,int ,int ,struct mp_image*) ;
 int assert (int) ;
 int av_frame_unref (TYPE_2__*) ;
 int avcodec_receive_frame (int *,TYPE_2__*) ;
 int handle_err (struct mp_filter*) ;
 struct mp_image* mp_image_from_av_frame (TYPE_2__*) ;
 void* mp_pts_from_av (int ,int *) ;
 int prepare_decoding (struct mp_filter*) ;
 int reset_avctx (struct mp_filter*) ;
 int send_queued_packet (struct mp_filter*) ;

__attribute__((used)) static int decode_frame(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    AVCodecContext *avctx = ctx->avctx;

    if (!avctx)
        return AVERROR_EOF;

    prepare_decoding(vd);


    if (ctx->num_requeue_packets)
        send_queued_packet(vd);

    int ret = avcodec_receive_frame(avctx, ctx->pic);
    if (ret == AVERROR_EOF) {




        if (!ctx->num_delay_queue)
            reset_avctx(vd);
        return ret;
    } else if (ret < 0 && ret != AVERROR(EAGAIN)) {
        handle_err(vd);
    }

    if (!ctx->pic->buf[0])
        return ret;

    ctx->hwdec_fail_count = 0;

    struct mp_image *mpi = mp_image_from_av_frame(ctx->pic);
    if (!mpi) {
        av_frame_unref(ctx->pic);
        return ret;
    }
    assert(mpi->planes[0] || mpi->planes[3]);
    mpi->pts = mp_pts_from_av(ctx->pic->pts, &ctx->codec_timebase);
    mpi->dts = mp_pts_from_av(ctx->pic->pkt_dts, &ctx->codec_timebase);






    av_frame_unref(ctx->pic);

    MP_TARRAY_APPEND(ctx, ctx->delay_queue, ctx->num_delay_queue, mpi);
    return ret;
}
