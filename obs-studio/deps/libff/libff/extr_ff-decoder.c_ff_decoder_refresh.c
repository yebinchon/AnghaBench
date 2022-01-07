
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ff_frame {double pts; int frame; int clock; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_9__ {int abort; } ;
struct ff_decoder {double current_pts; long double current_pts_time; double previous_pts; int first_frame; double previous_pts_diff; double timer_next_wake; TYPE_7__ frame_queue; int callbacks; int natural_sync_clock; TYPE_1__ refresh_timer; int finished; int eof; scalar_t__ stream; } ;
struct TYPE_10__ {int sync_type; } ;
typedef TYPE_2__ ff_clock_t ;


 int AV_LOG_INFO ;
 int av_frame_free (int *) ;
 long double av_gettime () ;
 int av_log (int *,int ,char*) ;
 int ff_callbacks_frame (int ,struct ff_frame*) ;
 int ff_circular_queue_advance_read (TYPE_7__*) ;
 struct ff_frame* ff_circular_queue_peek_read (TYPE_7__*) ;
 TYPE_2__* ff_clock_move (int *) ;
 int ff_clock_release (TYPE_2__**) ;
 int ff_clock_start (TYPE_2__*,int ,int*) ;
 int ff_decoder_schedule_refresh (struct ff_decoder*,int) ;
 double get_sync_adjusted_pts_diff (TYPE_2__*,double,double) ;

void ff_decoder_refresh(void *opaque)
{
 struct ff_decoder *decoder = (struct ff_decoder *)opaque;

 struct ff_frame *frame;

 if (decoder->stream) {
  if (decoder->frame_queue.size == 0) {
   if (!decoder->eof || !decoder->finished) {




    ff_decoder_schedule_refresh(decoder, 1);
   } else {
    ff_callbacks_frame(decoder->callbacks, ((void*)0));
    decoder->refresh_timer.abort = 1;

    av_log(((void*)0), AV_LOG_INFO,
           "refresh timer stopping; eof");
    return;
   }
  } else {
   double pts_diff;
   double delay_until_next_wake;
   bool late_first_frame = 0;

   frame = ff_circular_queue_peek_read(
           &decoder->frame_queue);


   ff_clock_t *clock = ff_clock_move(&frame->clock);
   if (!ff_clock_start(clock, decoder->natural_sync_clock,
                       &decoder->refresh_timer.abort)) {
    ff_clock_release(&clock);




    if (decoder->refresh_timer.abort) {
     av_log(((void*)0), AV_LOG_INFO,
            "refresh timer aborted");
     return;
    }






    ff_decoder_schedule_refresh(decoder, 100);



    ff_circular_queue_advance_read(
            &decoder->frame_queue);
    return;
   }

   decoder->current_pts = frame->pts;
   decoder->current_pts_time = av_gettime();



   pts_diff = frame->pts - decoder->previous_pts;




   if (decoder->first_frame) {
    late_first_frame = pts_diff >= 1.0;
    decoder->first_frame = 0;
   }

   if (pts_diff <= 0 || late_first_frame) {

    pts_diff = decoder->previous_pts_diff;
   }


   decoder->previous_pts_diff = pts_diff;
   decoder->previous_pts = frame->pts;


   if (clock->sync_type != decoder->natural_sync_clock) {
    pts_diff = get_sync_adjusted_pts_diff(
            clock, frame->pts, pts_diff);
   }

   decoder->timer_next_wake += pts_diff;


   delay_until_next_wake = decoder->timer_next_wake -
                           (av_gettime() / 1000000.0L);
   if (delay_until_next_wake < 0.010L) {
    delay_until_next_wake = 0.010L;
   }

   if (delay_until_next_wake > pts_diff)
    delay_until_next_wake = pts_diff;

   ff_clock_release(&clock);
   ff_callbacks_frame(decoder->callbacks, frame);

   ff_decoder_schedule_refresh(
           decoder,
           (int)(delay_until_next_wake * 1000 + 0.5L));

   av_frame_free(&frame->frame);

   ff_circular_queue_advance_read(&decoder->frame_queue);
  }
 } else {
  ff_decoder_schedule_refresh(decoder, 100);
 }
}
