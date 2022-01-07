
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct rtmp_stream {int packets_mutex; TYPE_1__ packets; } ;
struct encoder_packet {int dummy; } ;


 int circlebuf_pop_front (TYPE_1__*,struct encoder_packet*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline bool get_next_packet(struct rtmp_stream *stream,
       struct encoder_packet *packet)
{
 bool new_packet = 0;

 pthread_mutex_lock(&stream->packets_mutex);
 if (stream->packets.size) {
  circlebuf_pop_front(&stream->packets, packet,
        sizeof(struct encoder_packet));
  new_packet = 1;
 }
 pthread_mutex_unlock(&stream->packets_mutex);

 return new_packet;
}
