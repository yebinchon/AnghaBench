
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decode {int eof; int frame_ready; scalar_t__ frame_pts; int decoder; } ;


 int avcodec_flush_buffers (int ) ;
 int mp_decode_clear_packets (struct mp_decode*) ;

void mp_decode_flush(struct mp_decode *d)
{
 avcodec_flush_buffers(d->decoder);
 mp_decode_clear_packets(d);
 d->eof = 0;
 d->frame_pts = 0;
 d->frame_ready = 0;
}
