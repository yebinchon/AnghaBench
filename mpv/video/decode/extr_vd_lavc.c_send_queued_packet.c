
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_requeue_packets; int * requeue_packets; int hw_probing; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;


 scalar_t__ AVERROR (int ) ;
 int EAGAIN ;
 int MP_TARRAY_REMOVE_AT (int *,int,int ) ;
 int assert (int) ;
 scalar_t__ send_packet (struct mp_filter*,int ) ;
 int talloc_free (int ) ;

__attribute__((used)) static void send_queued_packet(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    assert(ctx->num_requeue_packets);
    assert(!ctx->hw_probing);

    if (send_packet(vd, ctx->requeue_packets[0]) != AVERROR(EAGAIN)) {
        talloc_free(ctx->requeue_packets[0]);
        MP_TARRAY_REMOVE_AT(ctx->requeue_packets, ctx->num_requeue_packets, 0);
    }
}
