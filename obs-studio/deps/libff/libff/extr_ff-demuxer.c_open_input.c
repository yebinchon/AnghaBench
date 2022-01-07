
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int custom_options; } ;
struct ff_demuxer {TYPE_1__ options; int input; int * input_format; } ;
struct TYPE_9__ {struct ff_demuxer* opaque; int callback; } ;
struct TYPE_10__ {TYPE_2__ interrupt_callback; } ;
typedef int AVInputFormat ;
typedef TYPE_2__ AVIOInterruptCB ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_WARNING ;
 int * av_find_input_format (int *) ;
 int av_log (int *,int ,char*,int *) ;
 TYPE_3__* avformat_alloc_context () ;
 scalar_t__ avformat_find_stream_info (TYPE_3__*,int *) ;
 scalar_t__ avformat_open_input (TYPE_3__**,int ,int *,int *) ;
 int demuxer_interrupted_callback ;

__attribute__((used)) static bool open_input(struct ff_demuxer *demuxer,
                       AVFormatContext **format_context)
{
 AVInputFormat *input_format = ((void*)0);

 AVIOInterruptCB interrupted_callback;
 interrupted_callback.callback = demuxer_interrupted_callback;
 interrupted_callback.opaque = demuxer;

 *format_context = avformat_alloc_context();
 (*format_context)->interrupt_callback = interrupted_callback;

 if (demuxer->input_format != ((void*)0)) {
  input_format = av_find_input_format(demuxer->input_format);
  if (input_format == ((void*)0))
   av_log(((void*)0), AV_LOG_WARNING,
          "unable to find input "
          "format %s",
          demuxer->input_format);
 }

 if (avformat_open_input(format_context, demuxer->input, input_format,
                         &demuxer->options.custom_options) != 0)
  return 0;

 return avformat_find_stream_info(*format_context, ((void*)0)) >= 0;
}
