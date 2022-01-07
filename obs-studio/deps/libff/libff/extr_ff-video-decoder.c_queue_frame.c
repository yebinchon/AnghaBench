
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ff_frame {double pts; int clock; TYPE_2__* frame; } ;
struct ff_decoder {int frame_queue; int callbacks; int clock; TYPE_1__* codec; scalar_t__ abort; } ;
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; } ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; scalar_t__ pix_fmt; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVCodecContext ;


 TYPE_2__* av_frame_clone (int *) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_callbacks_frame_initialize (struct ff_frame*,int ) ;
 int ff_circular_queue_advance_write (int *,struct ff_frame*) ;
 struct ff_frame* ff_circular_queue_peek_write (int *) ;
 int ff_circular_queue_wait_write (int *) ;
 int ff_clock_retain (int ) ;

__attribute__((used)) static bool queue_frame(struct ff_decoder *decoder, AVFrame *frame,
                        double best_effort_pts)
{
 struct ff_frame *queue_frame;
 bool call_initialize;

 ff_circular_queue_wait_write(&decoder->frame_queue);

 if (decoder->abort) {
  return 0;
 }

 queue_frame = ff_circular_queue_peek_write(&decoder->frame_queue);



 AVCodecContext *codec = decoder->codec;
 call_initialize = (queue_frame->frame == ((void*)0) ||
                    queue_frame->frame->width != codec->width ||
                    queue_frame->frame->height != codec->height ||
                    queue_frame->frame->format != codec->pix_fmt);

 if (queue_frame->frame != ((void*)0)) {


  av_frame_free(&queue_frame->frame);
 }

 queue_frame->frame = av_frame_clone(frame);
 queue_frame->clock = ff_clock_retain(decoder->clock);

 if (call_initialize)
  ff_callbacks_frame_initialize(queue_frame, decoder->callbacks);

 queue_frame->pts = best_effort_pts;

 ff_circular_queue_advance_write(&decoder->frame_queue, queue_frame);

 return 1;
}
