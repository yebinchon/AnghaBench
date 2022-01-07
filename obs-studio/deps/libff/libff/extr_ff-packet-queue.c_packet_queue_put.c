
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ff_packet_queue {int mutex; int cond; int total_size; int count; struct ff_packet_list* last_packet; struct ff_packet_list* first_packet; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ff_packet {TYPE_1__ base; } ;
struct ff_packet_list {struct ff_packet packet; struct ff_packet_list* next; } ;


 int FF_PACKET_FAIL ;
 int FF_PACKET_SUCCESS ;
 struct ff_packet_list* av_malloc (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int packet_queue_put(struct ff_packet_queue *q, struct ff_packet *packet)
{
 struct ff_packet_list *new_packet;

 new_packet = av_malloc(sizeof(struct ff_packet_list));

 if (new_packet == ((void*)0))
  return FF_PACKET_FAIL;

 new_packet->packet = *packet;
 new_packet->next = ((void*)0);

 pthread_mutex_lock(&q->mutex);

 if (q->last_packet == ((void*)0))
  q->first_packet = new_packet;
 else
  q->last_packet->next = new_packet;

 q->last_packet = new_packet;

 q->count++;
 q->total_size += new_packet->packet.base.size;

 pthread_cond_signal(&q->cond);
 pthread_mutex_unlock(&q->mutex);

 return FF_PACKET_SUCCESS;
}
