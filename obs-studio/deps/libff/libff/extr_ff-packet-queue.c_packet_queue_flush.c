
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ff_packet_queue {int mutex; scalar_t__ total_size; scalar_t__ count; struct ff_packet_list* first_packet; int last_packet; } ;
struct TYPE_2__ {int * clock; int base; } ;
struct ff_packet_list {TYPE_1__ packet; struct ff_packet_list* next; } ;


 int av_free_packet (int *) ;
 int av_freep (struct ff_packet_list**) ;
 int ff_clock_release (int **) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void packet_queue_flush(struct ff_packet_queue *q)
{
 struct ff_packet_list *packet;

 pthread_mutex_lock(&q->mutex);

 for (packet = q->first_packet; packet != ((void*)0);
      packet = q->first_packet) {
  q->first_packet = packet->next;
  av_free_packet(&packet->packet.base);
  if (packet->packet.clock != ((void*)0))
   ff_clock_release(&packet->packet.clock);
  av_freep(&packet);
 }

 q->last_packet = q->first_packet = ((void*)0);
 q->count = 0;
 q->total_size = 0;

 pthread_mutex_unlock(&q->mutex);
}
