
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct demux_packet {int duration; int dts; int pts; TYPE_1__* avpacket; scalar_t__ keyframe; int len; int * buffer; } ;
struct TYPE_11__ {int duration; void* dts; void* pts; int flags; int buf; int * data; int side_data_elems; int side_data; int size; } ;
struct TYPE_10__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_9__ {int flags; int buf; int * data; int side_data_elems; int side_data; } ;
typedef TYPE_2__ AVRational ;
typedef TYPE_3__ AVPacket ;


 int AV_PKT_FLAG_KEY ;
 int MP_NOPTS_VALUE ;
 int av_init_packet (TYPE_3__*) ;
 int av_q2d (TYPE_2__) ;
 void* mp_pts_to_av (int ,TYPE_2__*) ;

void mp_set_av_packet(AVPacket *dst, struct demux_packet *mpkt, AVRational *tb)
{
    av_init_packet(dst);
    dst->data = mpkt ? mpkt->buffer : ((void*)0);
    dst->size = mpkt ? mpkt->len : 0;


    if (mpkt && mpkt->keyframe)
        dst->flags |= AV_PKT_FLAG_KEY;
    if (mpkt && mpkt->avpacket) {
        dst->side_data = mpkt->avpacket->side_data;
        dst->side_data_elems = mpkt->avpacket->side_data_elems;
        if (dst->data == mpkt->avpacket->data)
            dst->buf = mpkt->avpacket->buf;
        dst->flags |= mpkt->avpacket->flags;
    }
    if (mpkt && tb && tb->num > 0 && tb->den > 0)
        dst->duration = mpkt->duration / av_q2d(*tb);
    dst->pts = mp_pts_to_av(mpkt ? mpkt->pts : MP_NOPTS_VALUE, tb);
    dst->dts = mp_pts_to_av(mpkt ? mpkt->dts : MP_NOPTS_VALUE, tb);
}
