
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct mp_decode {scalar_t__ hw_format; TYPE_4__* sw_frame; TYPE_4__* frame; TYPE_4__* hw_frame; scalar_t__ hw; TYPE_1__ pkt; int in_frame; int decoder; scalar_t__ audio; } ;
struct TYPE_7__ {scalar_t__ format; } ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_hwframe_transfer_data (TYPE_4__*,TYPE_4__*,int ) ;
 int avcodec_decode_audio4 (int ,int ,int*,TYPE_1__*) ;
 int avcodec_decode_video2 (int ,int ,int*,TYPE_1__*) ;
 int avcodec_receive_frame (int ,int ) ;
 int avcodec_send_packet (int ,TYPE_1__*) ;

__attribute__((used)) static int decode_packet(struct mp_decode *d, int *got_frame)
{
 int ret;
 *got_frame = 0;
 if (d->audio) {
  ret = avcodec_decode_audio4(d->decoder, d->in_frame, got_frame,
         &d->pkt);
 } else {
  ret = avcodec_decode_video2(d->decoder, d->in_frame, got_frame,
         &d->pkt);
 }
 d->frame = d->sw_frame;
 return ret;
}
