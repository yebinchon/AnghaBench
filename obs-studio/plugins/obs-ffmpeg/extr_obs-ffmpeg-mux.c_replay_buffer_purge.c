
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct ffmpeg_muxer {scalar_t__ max_size; int keyframes; scalar_t__ cur_size; scalar_t__ cur_time; scalar_t__ max_time; TYPE_1__ packets; } ;
struct encoder_packet {scalar_t__ dts_usec; scalar_t__ size; } ;
typedef scalar_t__ int64_t ;


 int purge (struct ffmpeg_muxer*) ;

__attribute__((used)) static inline void replay_buffer_purge(struct ffmpeg_muxer *stream,
           struct encoder_packet *pkt)
{
 if (stream->max_size) {
  if (!stream->packets.size || stream->keyframes <= 2)
   return;

  while ((stream->cur_size + (int64_t)pkt->size) >
         stream->max_size)
   purge(stream);
 }

 if (!stream->packets.size || stream->keyframes <= 2)
  return;

 while ((pkt->dts_usec - stream->cur_time) > stream->max_time)
  purge(stream);
}
