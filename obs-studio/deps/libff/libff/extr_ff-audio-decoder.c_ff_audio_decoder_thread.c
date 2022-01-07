
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_packet {int base; int member_0; } ;
struct ff_decoder {int finished; int * clock; int abort; } ;
typedef int AVFrame ;


 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_frame_unref (int *) ;
 int av_free_packet (int *) ;
 int decode_frame (struct ff_decoder*,struct ff_packet*,int *,int*) ;
 int ff_clock_release (int **) ;
 double ff_decoder_get_best_effort_pts (struct ff_decoder*,int *) ;
 int queue_frame (struct ff_decoder*,int *,double) ;

void *ff_audio_decoder_thread(void *opaque_audio_decoder)
{
 struct ff_decoder *decoder = opaque_audio_decoder;

 struct ff_packet packet = {0};
 bool frame_complete;
 AVFrame *frame = av_frame_alloc();
 int ret;

 while (!decoder->abort) {
  ret = decode_frame(decoder, &packet, frame, &frame_complete);
  if (ret == 0) {
   break;
  } else if (ret < 0) {
   av_free_packet(&packet.base);
   continue;
  }


  if (frame_complete) {




   double best_effort_pts =
           ff_decoder_get_best_effort_pts(decoder, frame);
   queue_frame(decoder, frame, best_effort_pts);
   av_frame_unref(frame);
  }

  av_free_packet(&packet.base);
 }

 if (decoder->clock != ((void*)0))
  ff_clock_release(&decoder->clock);

 av_frame_free(&frame);

 decoder->finished = 1;

 return ((void*)0);
}
