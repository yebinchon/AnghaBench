
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int duration; int pos; void* dts; void* pts; } ;
struct TYPE_6__ {int time_base; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVPacket ;


 int AV_ROUND_NEAR_INF ;
 int AV_ROUND_PASS_MINMAX ;
 scalar_t__ av_rescale_q (int,int ,int ) ;
 void* av_rescale_q_rnd (void*,int ,int ,int) ;

__attribute__((used)) static inline void process_packet(AVPacket *pkt, AVStream *in_stream,
      AVStream *out_stream)
{
 pkt->pts = av_rescale_q_rnd(pkt->pts, in_stream->time_base,
        out_stream->time_base,
        AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);
 pkt->dts = av_rescale_q_rnd(pkt->dts, in_stream->time_base,
        out_stream->time_base,
        AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);
 pkt->duration = (int)av_rescale_q(pkt->duration, in_stream->time_base,
       out_stream->time_base);
 pkt->pos = -1;
}
