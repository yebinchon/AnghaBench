
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int capacity; void** slots; } ;
struct ff_frame {int abort; int codec; TYPE_1__ frame_queue; int packet_queue; int * clock; int * frame; int callbacks; int decoder_thread; int refresh_timer; } ;
struct ff_decoder {int abort; int codec; TYPE_1__ frame_queue; int packet_queue; int * clock; int * frame; int callbacks; int decoder_thread; int refresh_timer; } ;


 int assert (int ) ;
 int av_frame_unref (int *) ;
 int av_free (struct ff_frame*) ;
 int avcodec_close (int ) ;
 int ff_callbacks_frame_free (struct ff_frame*,int ) ;
 int ff_circular_queue_abort (TYPE_1__*) ;
 int ff_circular_queue_free (TYPE_1__*) ;
 int ff_clock_release (int **) ;
 int ff_timer_free (int *) ;
 int packet_queue_abort (int *) ;
 int packet_queue_free (int *) ;
 int pthread_join (int ,void**) ;

void ff_decoder_free(struct ff_decoder *decoder)
{
 void *decoder_thread_result;
 int i;

 assert(decoder != ((void*)0));

 decoder->abort = 1;

 ff_circular_queue_abort(&decoder->frame_queue);
 packet_queue_abort(&decoder->packet_queue);

 ff_timer_free(&decoder->refresh_timer);

 pthread_join(decoder->decoder_thread, &decoder_thread_result);

 for (i = 0; i < decoder->frame_queue.capacity; i++) {
  void *item = decoder->frame_queue.slots[i];
  struct ff_frame *frame = (struct ff_frame *)item;

  ff_callbacks_frame_free(frame, decoder->callbacks);

  if (frame != ((void*)0)) {
   if (frame->frame != ((void*)0))
    av_frame_unref(frame->frame);
   if (frame->clock != ((void*)0))
    ff_clock_release(&frame->clock);
   av_free(frame);
  }
 }

 packet_queue_free(&decoder->packet_queue);
 ff_circular_queue_free(&decoder->frame_queue);

 avcodec_close(decoder->codec);

 av_free(decoder);
}
