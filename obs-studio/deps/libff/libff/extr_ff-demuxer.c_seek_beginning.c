
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ff_demuxer {int seek_request; int seek_flush; int input; TYPE_1__* format_context; scalar_t__ seek_pos; int seek_flags; } ;
struct TYPE_2__ {scalar_t__ duration; scalar_t__ start_time; } ;


 int AVSEEK_FLAG_BACKWARD ;
 int AVSEEK_FLAG_FRAME ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int av_log (int *,int ,char*,int ) ;

__attribute__((used)) static void seek_beginning(struct ff_demuxer *demuxer)
{
 if (demuxer->format_context->duration == AV_NOPTS_VALUE) {
  demuxer->seek_flags = AVSEEK_FLAG_FRAME;
  demuxer->seek_pos = 0;
 } else {
  demuxer->seek_flags = AVSEEK_FLAG_BACKWARD;
  demuxer->seek_pos = demuxer->format_context->start_time;
 }
 demuxer->seek_request = 1;
 demuxer->seek_flush = 0;
 av_log(((void*)0), AV_LOG_VERBOSE, "looping media %s", demuxer->input);
}
