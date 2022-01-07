
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int frame_drop; int video_frame_queue_size; int video_packet_queue_size; int audio_frame_queue_size; int audio_packet_queue_size; } ;
struct ff_demuxer {TYPE_5__* video_decoder; int video_callbacks; TYPE_1__ options; TYPE_5__* audio_decoder; int audio_callbacks; } ;
struct TYPE_9__ {int hwaccel_decoder; int * callbacks; int natural_sync_clock; int frame_drop; } ;
struct TYPE_8__ {int codec_type; } ;
typedef int AVStream ;
typedef TYPE_2__ AVCodecContext ;




 int AV_SYNC_AUDIO_MASTER ;
 int AV_SYNC_VIDEO_MASTER ;
 int ff_callbacks_format (int *,TYPE_2__*) ;
 int ff_decoder_free (TYPE_5__*) ;
 void* ff_decoder_init (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static bool initialize_decoder(struct ff_demuxer *demuxer,
                               AVCodecContext *codec_context, AVStream *stream,
                               bool hwaccel_decoder)
{
 switch (codec_context->codec_type) {
 case 129:
  demuxer->audio_decoder = ff_decoder_init(
          codec_context, stream,
          demuxer->options.audio_packet_queue_size,
          demuxer->options.audio_frame_queue_size);

  demuxer->audio_decoder->hwaccel_decoder = hwaccel_decoder;
  demuxer->audio_decoder->frame_drop =
          demuxer->options.frame_drop;
  demuxer->audio_decoder->natural_sync_clock =
          AV_SYNC_AUDIO_MASTER;
  demuxer->audio_decoder->callbacks = &demuxer->audio_callbacks;

  if (!ff_callbacks_format(&demuxer->audio_callbacks,
                           codec_context)) {
   ff_decoder_free(demuxer->audio_decoder);
   demuxer->audio_decoder = ((void*)0);
   return 0;
  }

  demuxer->audio_decoder = demuxer->audio_decoder;
  return 1;

 case 128:
  demuxer->video_decoder = ff_decoder_init(
          codec_context, stream,
          demuxer->options.video_packet_queue_size,
          demuxer->options.video_frame_queue_size);

  demuxer->video_decoder->hwaccel_decoder = hwaccel_decoder;
  demuxer->video_decoder->frame_drop =
          demuxer->options.frame_drop;
  demuxer->video_decoder->natural_sync_clock =
          AV_SYNC_VIDEO_MASTER;
  demuxer->video_decoder->callbacks = &demuxer->video_callbacks;

  if (!ff_callbacks_format(&demuxer->video_callbacks,
                           codec_context)) {
   ff_decoder_free(demuxer->video_decoder);
   demuxer->video_decoder = ((void*)0);
   return 0;
  }

  return 1;
 default:
  return 0;
 }
}
