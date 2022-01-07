
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int packets; } ;
struct encoder_packet {scalar_t__ type; scalar_t__ keyframe; } ;
typedef int pkt ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int circlebuf_peek_front (int *,struct encoder_packet*,int) ;
 scalar_t__ purge_front (struct ffmpeg_muxer*) ;

__attribute__((used)) static inline void purge(struct ffmpeg_muxer *stream)
{
 if (purge_front(stream)) {
  struct encoder_packet pkt;

  for (;;) {
   circlebuf_peek_front(&stream->packets, &pkt,
          sizeof(pkt));
   if (pkt.type == OBS_ENCODER_VIDEO && pkt.keyframe)
    return;

   purge_front(stream);
  }
 }
}
