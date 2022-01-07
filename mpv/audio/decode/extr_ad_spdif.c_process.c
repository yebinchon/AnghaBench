
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct spdifContext {int out_buffer_len; int sstride; int out_buffer; int pool; int fmt; TYPE_4__* lavf_ctx; } ;
struct mp_frame {scalar_t__ type; struct demux_packet* data; } ;
struct mp_filter {int * ppins; struct spdifContext* priv; } ;
struct mp_aframe {int dummy; } ;
struct demux_packet {double pts; } ;
struct TYPE_7__ {int pb; } ;
struct TYPE_6__ {scalar_t__ dts; scalar_t__ pts; } ;
typedef TYPE_1__ AVPacket ;


 int AVUNERROR (int) ;
 struct mp_frame MAKE_FRAME (int ,struct mp_aframe*) ;
 int MP_ERR (struct mp_filter*,char*,...) ;
 int MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_FRAME_PACKET ;
 int TA_FREEP (struct mp_aframe**) ;
 int av_write_frame (TYPE_4__*,TYPE_1__*) ;
 int avio_flush (int ) ;
 scalar_t__ init_filter (struct mp_filter*,TYPE_1__*) ;
 int memcpy (int *,int ,int) ;
 int ** mp_aframe_get_data_rw (struct mp_aframe*) ;
 struct mp_aframe* mp_aframe_new_ref (int ) ;
 scalar_t__ mp_aframe_pool_allocate (int ,struct mp_aframe*,int) ;
 int mp_aframe_set_pts (struct mp_aframe*,double) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 int mp_pin_can_transfer_data (int ,int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int mp_set_av_packet (TYPE_1__*,struct demux_packet*,int *) ;
 int mp_strerror (int ) ;
 int talloc_free (struct demux_packet*) ;

__attribute__((used)) static void process(struct mp_filter *da)
{
    struct spdifContext *spdif_ctx = da->priv;

    if (!mp_pin_can_transfer_data(da->ppins[1], da->ppins[0]))
        return;

    struct mp_frame inframe = mp_pin_out_read(da->ppins[0]);
    if (inframe.type == MP_FRAME_EOF) {
        mp_pin_in_write(da->ppins[1], inframe);
        return;
    } else if (inframe.type != MP_FRAME_PACKET) {
        if (inframe.type) {
            MP_ERR(da, "unknown frame type\n");
            mp_filter_internal_mark_failed(da);
        }
        return;
    }

    struct demux_packet *mpkt = inframe.data;
    struct mp_aframe *out = ((void*)0);
    double pts = mpkt->pts;

    AVPacket pkt;
    mp_set_av_packet(&pkt, mpkt, ((void*)0));
    pkt.pts = pkt.dts = 0;
    if (!spdif_ctx->lavf_ctx) {
        if (init_filter(da, &pkt) < 0)
            goto done;
    }
    spdif_ctx->out_buffer_len = 0;
    int ret = av_write_frame(spdif_ctx->lavf_ctx, &pkt);
    avio_flush(spdif_ctx->lavf_ctx->pb);
    if (ret < 0) {
        MP_ERR(da, "spdif mux error: '%s'\n", mp_strerror(AVUNERROR(ret)));
        goto done;
    }

    out = mp_aframe_new_ref(spdif_ctx->fmt);
    int samples = spdif_ctx->out_buffer_len / spdif_ctx->sstride;
    if (mp_aframe_pool_allocate(spdif_ctx->pool, out, samples) < 0) {
        TA_FREEP(&out);
        goto done;
    }

    uint8_t **data = mp_aframe_get_data_rw(out);
    if (!data) {
        TA_FREEP(&out);
        goto done;
    }

    memcpy(data[0], spdif_ctx->out_buffer, spdif_ctx->out_buffer_len);
    mp_aframe_set_pts(out, pts);

done:
    talloc_free(mpkt);
    if (out) {
        mp_pin_in_write(da->ppins[1], MAKE_FRAME(MP_FRAME_AUDIO, out));
    } else {
        mp_filter_internal_mark_failed(da);
    }
}
