
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ff_decoder {double start_pts; double predicted_pts; TYPE_2__* codec; TYPE_1__* stream; scalar_t__ first_frame; } ;
typedef double int64_t ;
struct TYPE_9__ {long double repeat_pict; } ;
struct TYPE_8__ {int time_base; } ;
struct TYPE_7__ {int time_base; } ;
typedef TYPE_3__ AVFrame ;


 int AV_LOG_WARNING ;
 double AV_NOPTS_VALUE ;
 double av_frame_get_best_effort_timestamp (TYPE_3__*) ;
 double av_frame_get_pkt_duration (TYPE_3__*) ;
 int av_log (int *,int ,char*) ;
 double av_q2d (int ) ;

double ff_decoder_get_best_effort_pts(struct ff_decoder *decoder,
                                      AVFrame *frame)
{


 double estimated_frame_delay;
 int64_t best_effort_pts;
 double d_pts;




 best_effort_pts = av_frame_get_best_effort_timestamp(frame);

 if (best_effort_pts != AV_NOPTS_VALUE) {

  if (best_effort_pts < decoder->start_pts) {
   if (decoder->first_frame) {
    best_effort_pts = decoder->start_pts;
   } else {
    av_log(((void*)0), AV_LOG_WARNING,
           "multiple pts < "
           "start_pts; setting start pts "
           "to 0");
    decoder->start_pts = 0;
   }
  }

  best_effort_pts -= decoder->start_pts;



  d_pts = best_effort_pts * av_q2d(decoder->stream->time_base);
  decoder->predicted_pts = d_pts;
 } else {
  d_pts = decoder->predicted_pts;
 }



 estimated_frame_delay = av_frame_get_pkt_duration(frame) *
                         av_q2d(decoder->codec->time_base);

 estimated_frame_delay +=
         frame->repeat_pict / (1.0L / estimated_frame_delay);

 decoder->predicted_pts += estimated_frame_delay;

 return d_pts;
}
