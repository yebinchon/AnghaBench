
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_hw_decoding; int video_packet_queue_size; int audio_packet_queue_size; int video_frame_queue_size; int audio_frame_queue_size; int frame_drop; } ;
struct TYPE_3__ {int sync_type; } ;
struct ff_demuxer {TYPE_2__ options; TYPE_1__ clock; } ;


 int AUDIO_FRAME_QUEUE_SIZE ;
 int AUDIO_PACKET_QUEUE_SIZE ;
 int AVDISCARD_DEFAULT ;
 int DEFAULT_AV_SYNC_TYPE ;
 int VIDEO_FRAME_QUEUE_SIZE ;
 int VIDEO_PACKET_QUEUE_SIZE ;
 struct ff_demuxer* av_mallocz (int) ;
 int av_register_all () ;
 int avdevice_register_all () ;
 int avfilter_register_all () ;
 int avformat_network_init () ;

struct ff_demuxer *ff_demuxer_init()
{
 struct ff_demuxer *demuxer;

 av_register_all();
 avdevice_register_all();
 avfilter_register_all();
 avformat_network_init();

 demuxer = av_mallocz(sizeof(struct ff_demuxer));
 if (demuxer == ((void*)0))
  return ((void*)0);

 demuxer->clock.sync_type = DEFAULT_AV_SYNC_TYPE;
 demuxer->options.frame_drop = AVDISCARD_DEFAULT;
 demuxer->options.audio_frame_queue_size = AUDIO_FRAME_QUEUE_SIZE;
 demuxer->options.video_frame_queue_size = VIDEO_FRAME_QUEUE_SIZE;
 demuxer->options.audio_packet_queue_size = AUDIO_PACKET_QUEUE_SIZE;
 demuxer->options.video_packet_queue_size = VIDEO_PACKET_QUEUE_SIZE;
 demuxer->options.is_hw_decoding = 0;

 return demuxer;
}
