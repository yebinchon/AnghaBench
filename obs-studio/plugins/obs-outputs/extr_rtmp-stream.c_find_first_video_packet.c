
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct rtmp_stream {TYPE_1__ packets; } ;
struct encoder_packet {scalar_t__ type; int keyframe; } ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 struct encoder_packet* circlebuf_data (TYPE_1__*,size_t) ;

__attribute__((used)) static bool find_first_video_packet(struct rtmp_stream *stream,
        struct encoder_packet *first)
{
 size_t count = stream->packets.size / sizeof(*first);

 for (size_t i = 0; i < count; i++) {
  struct encoder_packet *cur =
   circlebuf_data(&stream->packets, i * sizeof(*first));
  if (cur->type == OBS_ENCODER_VIDEO && !cur->keyframe) {
   *first = *cur;
   return 1;
  }
 }

 return 0;
}
