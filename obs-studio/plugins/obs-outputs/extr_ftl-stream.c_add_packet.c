
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int packets; } ;
struct encoder_packet {int dummy; } ;


 int circlebuf_push_back (int *,struct encoder_packet*,int) ;

__attribute__((used)) static inline bool add_packet(struct ftl_stream *stream,
         struct encoder_packet *packet)
{
 circlebuf_push_back(&stream->packets, packet,
       sizeof(struct encoder_packet));
 return 1;
}
