
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct ffmpeg_muxer {scalar_t__ cur_size; scalar_t__ cur_time; TYPE_1__ packets; int keyframes; } ;
struct encoder_packet {scalar_t__ type; scalar_t__ size; scalar_t__ dts_usec; int keyframe; } ;
typedef int pkt ;
typedef scalar_t__ int64_t ;
typedef int first ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int circlebuf_peek_front (TYPE_1__*,struct encoder_packet*,int) ;
 int circlebuf_pop_front (TYPE_1__*,struct encoder_packet*,int) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;

__attribute__((used)) static bool purge_front(struct ffmpeg_muxer *stream)
{
 struct encoder_packet pkt;
 bool keyframe;

 circlebuf_pop_front(&stream->packets, &pkt, sizeof(pkt));

 keyframe = pkt.type == OBS_ENCODER_VIDEO && pkt.keyframe;

 if (keyframe)
  stream->keyframes--;

 if (!stream->packets.size) {
  stream->cur_size = 0;
  stream->cur_time = 0;
 } else {
  struct encoder_packet first;
  circlebuf_peek_front(&stream->packets, &first, sizeof(first));
  stream->cur_time = first.dts_usec;
  stream->cur_size -= (int64_t)pkt.size;
 }

 obs_encoder_packet_release(&pkt);
 return keyframe;
}
