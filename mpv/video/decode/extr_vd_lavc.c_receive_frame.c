
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method_name; scalar_t__ copying; } ;
struct TYPE_4__ {int num_sent_packets; int num_requeue_packets; scalar_t__ num_delay_queue; scalar_t__ max_delay_queue; int hwdec_notified; int hw_probing; struct demux_packet** sent_packets; TYPE_1__ hwdec; scalar_t__ use_hwdec; scalar_t__ hwdec_requested; scalar_t__ hwdec_fail_count; int hwdec_swpool; struct mp_image** delay_queue; struct demux_packet** requeue_packets; scalar_t__ hwdec_failed; } ;
typedef TYPE_2__ vd_ffmpeg_ctx ;
struct mp_image {scalar_t__ hwctx; } ;
struct mp_frame {int dummy; } ;
struct mp_filter {TYPE_2__* priv; } ;
struct demux_packet {int dummy; } ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_UNKNOWN ;
 int EAGAIN ;
 scalar_t__ INT_MAX ;
 struct mp_frame MAKE_FRAME (int ,struct mp_image*) ;
 int MP_ERR (struct mp_filter*,char*) ;
 int MP_FRAME_VIDEO ;
 int MP_INFO (struct mp_filter*,char*,int ) ;
 int MP_TARRAY_REMOVE_AT (struct mp_image**,scalar_t__,int ) ;
 int MP_VERBOSE (struct mp_filter*,char*) ;
 int decode_frame (struct mp_filter*) ;
 int force_fallback (struct mp_filter*) ;
 int handle_err (struct mp_filter*) ;
 struct mp_image* mp_image_hw_download (struct mp_image*,int ) ;
 int mp_image_unrefp (struct mp_image**) ;
 struct mp_image* mp_img_swap_to_native (struct mp_image*) ;
 int talloc_free (struct demux_packet*) ;

__attribute__((used)) static int receive_frame(struct mp_filter *vd, struct mp_frame *out_frame)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    int ret = decode_frame(vd);

    if (ctx->hwdec_failed) {

        struct demux_packet **pkts = ctx->sent_packets;
        int num_pkts = ctx->num_sent_packets;
        ctx->sent_packets = ((void*)0);
        ctx->num_sent_packets = 0;

        force_fallback(vd);

        ctx->requeue_packets = pkts;
        ctx->num_requeue_packets = num_pkts;

        return 0;
    }

    if (ret == AVERROR(EAGAIN) && ctx->num_requeue_packets)
        return 0;

    if (!ctx->num_delay_queue)
        return ret;

    if (ctx->num_delay_queue <= ctx->max_delay_queue && ret != AVERROR_EOF)
        return AVERROR(EAGAIN);

    struct mp_image *res = ctx->delay_queue[0];
    MP_TARRAY_REMOVE_AT(ctx->delay_queue, ctx->num_delay_queue, 0);

    res = res ? mp_img_swap_to_native(res) : ((void*)0);
    if (!res)
        return AVERROR_UNKNOWN;

    if (ctx->use_hwdec && ctx->hwdec.copying && res->hwctx) {
        struct mp_image *sw = mp_image_hw_download(res, ctx->hwdec_swpool);
        mp_image_unrefp(&res);
        res = sw;
        if (!res) {
            MP_ERR(vd, "Could not copy back hardware decoded frame.\n");
            ctx->hwdec_fail_count = INT_MAX - 1;
            handle_err(vd);
            return AVERROR_UNKNOWN;
        }
    }

    if (!ctx->hwdec_notified && ctx->hwdec_requested) {
        if (ctx->use_hwdec) {
            MP_INFO(vd, "Using hardware decoding (%s).\n",
                    ctx->hwdec.method_name);
        } else {
            MP_VERBOSE(vd, "Using software decoding.\n");
        }
        ctx->hwdec_notified = 1;
    }

    if (ctx->hw_probing) {
        for (int n = 0; n < ctx->num_sent_packets; n++)
            talloc_free(ctx->sent_packets[n]);
        ctx->num_sent_packets = 0;
        ctx->hw_probing = 0;
    }

    *out_frame = MAKE_FRAME(MP_FRAME_VIDEO, res);
    return 0;
}
