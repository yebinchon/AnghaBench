
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {int stream; int keyframe; int back_preroll; int back_restart; int codec; int end; int start; int segmented; int pos; int duration; int dts; int pts; } ;



void demux_packet_copy_attribs(struct demux_packet *dst, struct demux_packet *src)
{
    dst->pts = src->pts;
    dst->dts = src->dts;
    dst->duration = src->duration;
    dst->pos = src->pos;
    dst->segmented = src->segmented;
    dst->start = src->start;
    dst->end = src->end;
    dst->codec = src->codec;
    dst->back_restart = src->back_restart;
    dst->back_preroll = src->back_preroll;
    dst->keyframe = src->keyframe;
    dst->stream = src->stream;
}
