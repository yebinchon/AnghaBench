
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t latent; int front; int status; } ;
typedef TYPE_1__ mpeg_bitstream_t ;
typedef int cea708_t ;
typedef int caption_frame_t ;


 int LIBCAPTION_OK ;
 int MAX_REFRENCE_FRAMES ;
 int * _mpeg_bitstream_cea708_front (TYPE_1__*) ;
 int cea708_to_caption_frame (int *,int *) ;
 int libcaption_status_update (int ,int ) ;

size_t mpeg_bitstream_flush(mpeg_bitstream_t* packet, caption_frame_t* frame)
{
    if (packet->latent) {
        cea708_t* cea708 = _mpeg_bitstream_cea708_front(packet);
        packet->status = libcaption_status_update(LIBCAPTION_OK, cea708_to_caption_frame(frame, cea708));
        packet->front = (packet->front + 1) % MAX_REFRENCE_FRAMES;
        --packet->latent;
    }

    return packet->latent;
}
