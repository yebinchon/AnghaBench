
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {scalar_t__ min_priority; int last_dts_usec; int dropped_frames; } ;
struct encoder_packet {scalar_t__ drop_priority; int dts_usec; } ;


 int add_packet (struct rtmp_stream*,struct encoder_packet*) ;
 int check_to_drop_frames (struct rtmp_stream*,int) ;

__attribute__((used)) static bool add_video_packet(struct rtmp_stream *stream,
        struct encoder_packet *packet)
{
 check_to_drop_frames(stream, 0);
 check_to_drop_frames(stream, 1);



 if (packet->drop_priority < stream->min_priority) {
  stream->dropped_frames++;
  return 0;
 } else {
  stream->min_priority = 0;
 }

 stream->last_dts_usec = packet->dts_usec;
 return add_packet(stream, packet);
}
