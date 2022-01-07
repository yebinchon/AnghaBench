
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ff_frame {int dummy; } ;
struct ff_decoder {int abort; int finished; unsigned int packet_queue_size; double timer_next_wake; int previous_pts_diff; int first_frame; int packet_queue; int refresh_timer; int frame_queue; scalar_t__ predicted_pts; scalar_t__ start_pts; scalar_t__ current_pts_time; int * stream; TYPE_1__* codec; } ;
struct TYPE_3__ {struct ff_decoder* opaque; } ;
typedef int AVStream ;
typedef TYPE_1__ AVCodecContext ;


 int assert (int ) ;
 int av_free (struct ff_decoder*) ;
 scalar_t__ av_gettime () ;
 struct ff_decoder* av_mallocz (int) ;
 int ff_circular_queue_init (int *,int,unsigned int) ;
 int ff_decoder_refresh ;
 int ff_timer_free (int *) ;
 int ff_timer_init (int *,int ,struct ff_decoder*) ;
 int packet_queue_free (int *) ;
 int packet_queue_init (int *) ;

struct ff_decoder *ff_decoder_init(AVCodecContext *codec_context,
                                   AVStream *stream,
                                   unsigned int packet_queue_size,
                                   unsigned int frame_queue_size)
{
 bool success;

 assert(codec_context != ((void*)0));
 assert(stream != ((void*)0));

 struct ff_decoder *decoder = av_mallocz(sizeof(struct ff_decoder));

 if (decoder == ((void*)0))
  goto fail;

 decoder->codec = codec_context;
 decoder->codec->opaque = decoder;
 decoder->stream = stream;
 decoder->abort = 0;
 decoder->finished = 0;

 decoder->packet_queue_size = packet_queue_size;
 if (!packet_queue_init(&decoder->packet_queue))
  goto fail1;

 decoder->timer_next_wake = (double)av_gettime() / 1000000.0;
 decoder->previous_pts_diff = 40e-3;
 decoder->current_pts_time = av_gettime();
 decoder->start_pts = 0;
 decoder->predicted_pts = 0;
 decoder->first_frame = 1;

 success = ff_timer_init(&decoder->refresh_timer, ff_decoder_refresh,
                         decoder);
 if (!success)
  goto fail2;

 success = ff_circular_queue_init(&decoder->frame_queue,
                                  sizeof(struct ff_frame),
                                  frame_queue_size);
 if (!success)
  goto fail3;

 return decoder;

fail3:
 ff_timer_free(&decoder->refresh_timer);
fail2:
 packet_queue_free(&decoder->packet_queue);
fail1:
 av_free(decoder);
fail:
 return ((void*)0);
}
