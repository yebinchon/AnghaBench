
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ status; scalar_t__ latent; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
typedef int caption_frame_t ;
struct TYPE_8__ {double timestamp; } ;


 scalar_t__ LIBCAPTION_OK ;
 TYPE_5__* _mpeg_bitstream_cea708_front (TYPE_1__*) ;
 int _mpeg_bitstream_cea708_sort (TYPE_1__*) ;
 int mpeg_bitstream_flush (TYPE_1__*,int *) ;

void _mpeg_bitstream_cea708_sort_flush(mpeg_bitstream_t* packet, caption_frame_t* frame, double dts)
{
    _mpeg_bitstream_cea708_sort(packet);

    while (packet->latent && packet->status == LIBCAPTION_OK && _mpeg_bitstream_cea708_front(packet)->timestamp < dts) {
        mpeg_bitstream_flush(packet, frame);
    }
}
