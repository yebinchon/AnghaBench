
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ff_demuxer {int seek_request; scalar_t__ seek_flush; scalar_t__ seek_pos; int seek_flags; TYPE_4__* format_context; TYPE_2__* audio_decoder; TYPE_1__* video_decoder; } ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ duration; } ;
struct TYPE_7__ {int time_base; } ;
struct TYPE_6__ {TYPE_3__* stream; } ;
struct TYPE_5__ {TYPE_3__* stream; } ;
typedef TYPE_3__ AVStream ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,int ) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 int av_seek_frame (TYPE_4__*,int ,scalar_t__,int ) ;
 int ff_demuxer_flush (struct ff_demuxer*) ;
 int ff_demuxer_reset (struct ff_demuxer*) ;

__attribute__((used)) static bool handle_seek(struct ff_demuxer *demuxer)
{
 int ret;

 if (demuxer->seek_request) {
  AVStream *seek_stream = ((void*)0);
  int64_t seek_target = demuxer->seek_pos;

  if (demuxer->video_decoder != ((void*)0)) {
   seek_stream = demuxer->video_decoder->stream;

  } else if (demuxer->audio_decoder != ((void*)0)) {
   seek_stream = demuxer->audio_decoder->stream;
  }

  if (seek_stream != ((void*)0) &&
      demuxer->format_context->duration != AV_NOPTS_VALUE) {
   seek_target = av_rescale_q(seek_target, AV_TIME_BASE_Q,
                              seek_stream->time_base);
  }

  ret = av_seek_frame(demuxer->format_context, 0, seek_target,
                      demuxer->seek_flags);
  if (ret < 0) {
   av_log(((void*)0), AV_LOG_ERROR, "unable to seek stream: %s",
          av_err2str(ret));
   demuxer->seek_pos = 0;
   demuxer->seek_request = 0;
   return 0;

  } else {
   if (demuxer->seek_flush)
    ff_demuxer_flush(demuxer);
   ff_demuxer_reset(demuxer);
  }

  demuxer->seek_request = 0;
 }
 return 1;
}
