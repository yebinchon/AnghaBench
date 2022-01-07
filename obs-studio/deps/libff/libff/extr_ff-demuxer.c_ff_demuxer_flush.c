
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ff_demuxer {TYPE_1__* audio_decoder; TYPE_2__* video_decoder; } ;
struct TYPE_4__ {int packet_queue; int * stream; } ;
struct TYPE_3__ {int packet_queue; int * stream; } ;


 int packet_queue_flush (int *) ;
 int packet_queue_put_flush_packet (int *) ;

void ff_demuxer_flush(struct ff_demuxer *demuxer)
{
 if (demuxer->video_decoder != ((void*)0) &&
     demuxer->video_decoder->stream != ((void*)0)) {
  packet_queue_flush(&demuxer->video_decoder->packet_queue);
  packet_queue_put_flush_packet(
          &demuxer->video_decoder->packet_queue);
 }

 if (demuxer->audio_decoder != ((void*)0) &&
     demuxer->audio_decoder->stream != ((void*)0)) {
  packet_queue_flush(&demuxer->audio_decoder->packet_queue);
  packet_queue_put_flush_packet(
          &demuxer->audio_decoder->packet_queue);
 }
}
