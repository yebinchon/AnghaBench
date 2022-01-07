
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct rtmp_stream {int packets_mutex; TYPE_1__ packets; } ;
struct encoder_packet {int dummy; } ;
typedef int packet ;


 int circlebuf_pop_front (TYPE_1__*,struct encoder_packet*,int) ;
 int info (char*,int) ;
 size_t num_buffered_packets (struct rtmp_stream*) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void free_packets(struct rtmp_stream *stream)
{
 size_t num_packets;

 pthread_mutex_lock(&stream->packets_mutex);

 num_packets = num_buffered_packets(stream);
 if (num_packets)
  info("Freeing %d remaining packets", (int)num_packets);

 while (stream->packets.size) {
  struct encoder_packet packet;
  circlebuf_pop_front(&stream->packets, &packet, sizeof(packet));
  obs_encoder_packet_release(&packet);
 }
 pthread_mutex_unlock(&stream->packets_mutex);
}
