
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;


 int lavc_process (struct mp_filter*,int *,int ,int ) ;
 int receive_frame ;
 int send_packet ;

__attribute__((used)) static void process(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    lavc_process(vd, &ctx->state, send_packet, receive_frame);
}
