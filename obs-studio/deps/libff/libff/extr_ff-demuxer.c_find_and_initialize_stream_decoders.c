
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sync_type; } ;
struct ff_demuxer {int * video_decoder; int video_callbacks; int * audio_decoder; int audio_callbacks; TYPE_1__ clock; TYPE_3__* format_context; } ;
typedef scalar_t__ int64_t ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
struct TYPE_9__ {unsigned int nb_streams; scalar_t__ start_time; TYPE_2__** streams; } ;
struct TYPE_8__ {scalar_t__ discard; scalar_t__ start_time; int time_base; TYPE_4__* codec; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AVDISCARD_ALL ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_SYNC_AUDIO_MASTER ;
 int AV_SYNC_VIDEO_MASTER ;
 int AV_TIME_BASE_Q ;
 scalar_t__ FFMIN (scalar_t__,scalar_t__) ;
 scalar_t__ INT64_MAX ;
 int av_find_default_stream_index (TYPE_3__*) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 scalar_t__ ff_callbacks_initialize (int *) ;
 int ff_decoder_free (int *) ;
 int ff_decoder_start (int *) ;
 int find_decoder (struct ff_demuxer*,TYPE_2__*) ;
 int set_clock_sync_type (struct ff_demuxer*) ;
 int set_decoder_start_time (int *,scalar_t__) ;

__attribute__((used)) static bool find_and_initialize_stream_decoders(struct ff_demuxer *demuxer)
{
 AVFormatContext *format_context = demuxer->format_context;
 unsigned int i;
 AVStream *audio_stream = ((void*)0);
 AVStream *video_stream = ((void*)0);
 int64_t start_time = INT64_MAX;

 for (i = 0; i < format_context->nb_streams; i++) {
  AVCodecContext *codec = format_context->streams[i]->codec;

  if (codec->codec_type == AVMEDIA_TYPE_VIDEO && !video_stream)
   video_stream = format_context->streams[i];

  if (codec->codec_type == AVMEDIA_TYPE_AUDIO && !audio_stream)
   audio_stream = format_context->streams[i];
 }

 int default_stream_index =
         av_find_default_stream_index(demuxer->format_context);

 if (default_stream_index >= 0) {
  AVStream *stream =
          format_context->streams[default_stream_index];

  if (stream->codec->codec_type == AVMEDIA_TYPE_AUDIO)
   demuxer->clock.sync_type = AV_SYNC_AUDIO_MASTER;
  else if (stream->codec->codec_type == AVMEDIA_TYPE_VIDEO)
   demuxer->clock.sync_type = AV_SYNC_VIDEO_MASTER;
 }

 if (video_stream != ((void*)0))
  find_decoder(demuxer, video_stream);

 if (audio_stream != ((void*)0))
  find_decoder(demuxer, audio_stream);

 if (demuxer->video_decoder == ((void*)0) && demuxer->audio_decoder == ((void*)0)) {
  return 0;
 }

 if (!set_clock_sync_type(demuxer)) {
  return 0;
 }

 for (i = 0; i < format_context->nb_streams; i++) {
  AVStream *st = format_context->streams[i];
  int64_t st_start_time;

  if (st->discard == AVDISCARD_ALL ||
      st->start_time == AV_NOPTS_VALUE) {
   continue;
  }

  st_start_time = av_rescale_q(st->start_time, st->time_base,
                               AV_TIME_BASE_Q);
  start_time = FFMIN(start_time, st_start_time);
 }

 if (format_context->start_time != AV_NOPTS_VALUE) {
  if (start_time > format_context->start_time ||
      start_time == INT64_MAX) {
   start_time = format_context->start_time;
  }
 }

 if (start_time != INT64_MAX) {
  set_decoder_start_time(demuxer->video_decoder, start_time);
  set_decoder_start_time(demuxer->audio_decoder, start_time);
 }

 if (demuxer->audio_decoder != ((void*)0)) {
  if (ff_callbacks_initialize(&demuxer->audio_callbacks)) {
   ff_decoder_start(demuxer->audio_decoder);
  } else {
   ff_decoder_free(demuxer->audio_decoder);
   demuxer->audio_decoder = ((void*)0);
   if (!set_clock_sync_type(demuxer))
    return 0;
  }
 }

 if (demuxer->video_decoder != ((void*)0)) {
  if (ff_callbacks_initialize(&demuxer->video_callbacks)) {
   ff_decoder_start(demuxer->video_decoder);
  } else {
   ff_decoder_free(demuxer->video_decoder);
   demuxer->video_decoder = ((void*)0);
   if (!set_clock_sync_type(demuxer))
    return 0;
  }
 }

 return set_clock_sync_type(demuxer);
}
