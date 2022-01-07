
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ff_packet_queue {int mutex; scalar_t__ abort; int cond; int total_size; int count; int * last_packet; struct ff_packet_list* first_packet; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ff_packet {TYPE_1__ base; } ;
struct ff_packet_list {struct ff_packet packet; struct ff_packet_list* next; } ;


 int FF_PACKET_EMPTY ;
 int FF_PACKET_FAIL ;
 int FF_PACKET_SUCCESS ;
 int av_free (struct ff_packet_list*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int packet_queue_get(struct ff_packet_queue *q, struct ff_packet *packet,
                     bool block)
{
 struct ff_packet_list *potential_packet;
 int return_status;

 pthread_mutex_lock(&q->mutex);

 while (1) {
  potential_packet = q->first_packet;

  if (potential_packet != ((void*)0)) {
   q->first_packet = potential_packet->next;

   if (q->first_packet == ((void*)0))
    q->last_packet = ((void*)0);

   q->count--;
   q->total_size -= potential_packet->packet.base.size;
   *packet = potential_packet->packet;
   av_free(potential_packet);
   return_status = FF_PACKET_SUCCESS;
   break;

  } else if (!block) {
   return_status = FF_PACKET_EMPTY;
   break;

  } else {
   pthread_cond_wait(&q->cond, &q->mutex);
   if (q->abort) {
    return_status = FF_PACKET_FAIL;
    break;
   }
  }
 }

 pthread_mutex_unlock(&q->mutex);

 return return_status;
}
