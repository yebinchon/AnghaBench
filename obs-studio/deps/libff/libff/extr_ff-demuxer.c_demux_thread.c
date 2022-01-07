
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ff_packet {int base; int member_0; } ;
struct TYPE_8__ {scalar_t__ is_looping; } ;
struct ff_demuxer {int abort; TYPE_4__* video_decoder; TYPE_4__* audio_decoder; TYPE_1__ options; TYPE_3__* format_context; int input; } ;
struct TYPE_11__ {int eof; } ;
struct TYPE_10__ {TYPE_2__* pb; } ;
struct TYPE_9__ {scalar_t__ error; scalar_t__ eof_reached; } ;
typedef TYPE_2__ AVIOContext ;


 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int av_dump_format (TYPE_3__*,int ,int ,int ) ;
 int av_err2str (int) ;
 int av_free_packet (int *) ;
 int av_log (int *,int ,char*,int ) ;
 int av_read_frame (TYPE_3__*,int *) ;
 int av_usleep (int) ;
 scalar_t__ ff_decoder_accept (TYPE_4__*,struct ff_packet*) ;
 scalar_t__ ff_decoder_full (TYPE_4__*) ;
 int ff_demuxer_reset (struct ff_demuxer*) ;
 int find_and_initialize_stream_decoders (struct ff_demuxer*) ;
 int handle_seek (struct ff_demuxer*) ;
 int open_input (struct ff_demuxer*,TYPE_3__**) ;
 int seek_beginning (struct ff_demuxer*) ;

__attribute__((used)) static void *demux_thread(void *opaque)
{
 struct ff_demuxer *demuxer = (struct ff_demuxer *)opaque;
 int result;

 struct ff_packet packet = {0};

 if (!open_input(demuxer, &demuxer->format_context))
  goto fail;

 av_dump_format(demuxer->format_context, 0, demuxer->input, 0);

 if (!find_and_initialize_stream_decoders(demuxer))
  goto fail;

 ff_demuxer_reset(demuxer);

 while (!demuxer->abort) {

  if (!handle_seek(demuxer))
   break;

  if (ff_decoder_full(demuxer->audio_decoder) ||
      ff_decoder_full(demuxer->video_decoder)) {
   av_usleep(10 * 1000);
   continue;
  }

  result = av_read_frame(demuxer->format_context, &packet.base);
  if (result < 0) {
   bool eof = 0;
   if (result == AVERROR_EOF) {
    eof = 1;
   } else if (demuxer->format_context->pb != ((void*)0)) {
    AVIOContext *io_context =
            demuxer->format_context->pb;
    if (io_context->error == 0) {
     av_usleep(100 * 1000);
     continue;
    } else {
     if (io_context->eof_reached != 0)
      eof = 1;
    }
   }

   if (eof) {
    if (demuxer->options.is_looping) {
     seek_beginning(demuxer);
    } else {
     break;
    }
    continue;
   } else {
    av_log(((void*)0), AV_LOG_ERROR,
           "av_read_frame() failed: %s",
           av_err2str(result));
    break;
   }
  }

  if (ff_decoder_accept(demuxer->video_decoder, &packet))
   continue;
  else if (ff_decoder_accept(demuxer->audio_decoder, &packet))
   continue;
  else
   av_free_packet(&packet.base);
 }
 if (demuxer->audio_decoder != ((void*)0))
  demuxer->audio_decoder->eof = 1;
 if (demuxer->video_decoder != ((void*)0))
  demuxer->video_decoder->eof = 1;
fail:
 demuxer->abort = 1;

 return ((void*)0);
}
