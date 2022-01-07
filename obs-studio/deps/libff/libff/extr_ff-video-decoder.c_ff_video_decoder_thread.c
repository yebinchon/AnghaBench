
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ data; int flags; int pts; } ;
struct ff_packet {TYPE_4__ base; int * clock; int member_0; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__ flush_packet; } ;
struct ff_decoder {int finished; int * clock; int codec; TYPE_3__ packet_queue; scalar_t__ eof; int abort; } ;
typedef scalar_t__ int64_t ;
typedef int AVFrame ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int FF_PACKET_EMPTY ;
 int FF_PACKET_FAIL ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_frame_unref (int *) ;
 int av_free_packet (TYPE_4__*) ;
 int avcodec_decode_video2 (int ,int *,int*,TYPE_4__*) ;
 int avcodec_flush_buffers (int ) ;
 int * ff_clock_move (int **) ;
 int ff_clock_release (int **) ;
 scalar_t__ ff_clock_start_time (int *) ;
 double ff_decoder_get_best_effort_pts (struct ff_decoder*,int *) ;
 int ff_decoder_set_frame_drop_state (struct ff_decoder*,scalar_t__,int ) ;
 int packet_queue_get (TYPE_3__*,struct ff_packet*,int) ;
 int queue_frame (struct ff_decoder*,int *,double) ;

void *ff_video_decoder_thread(void *opaque_video_decoder)
{
 struct ff_decoder *decoder = (struct ff_decoder *)opaque_video_decoder;

 struct ff_packet packet = {0};
 int complete;
 AVFrame *frame = av_frame_alloc();
 int ret;
 bool key_frame;

 while (!decoder->abort) {
  if (decoder->eof)
   ret = packet_queue_get(&decoder->packet_queue, &packet,
                          0);
  else
   ret = packet_queue_get(&decoder->packet_queue, &packet,
                          1);

  if (ret == FF_PACKET_EMPTY || ret == FF_PACKET_FAIL) {

   break;
  }

  if (packet.base.data ==
      decoder->packet_queue.flush_packet.base.data) {
   avcodec_flush_buffers(decoder->codec);
   continue;
  }


  if (packet.clock != ((void*)0)) {
   if (decoder->clock != ((void*)0))
    ff_clock_release(&decoder->clock);
   decoder->clock = ff_clock_move(&packet.clock);
   av_free_packet(&packet.base);
   continue;
  }

  int64_t start_time = ff_clock_start_time(decoder->clock);
  key_frame = packet.base.flags & AV_PKT_FLAG_KEY;




  bool frame_drop_check = key_frame;

  frame_drop_check &= start_time != AV_NOPTS_VALUE;

  if (frame_drop_check)
   ff_decoder_set_frame_drop_state(decoder, start_time,
                                   packet.base.pts);

  avcodec_decode_video2(decoder->codec, frame, &complete,
                        &packet.base);




  if (complete) {




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
