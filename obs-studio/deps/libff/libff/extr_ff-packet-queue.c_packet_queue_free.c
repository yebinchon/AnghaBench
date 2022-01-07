
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct ff_packet_queue {TYPE_1__ flush_packet; int cond; int mutex; } ;


 int av_free_packet (int *) ;
 int packet_queue_flush (struct ff_packet_queue*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void packet_queue_free(struct ff_packet_queue *q)
{
 packet_queue_flush(q);

 pthread_mutex_destroy(&q->mutex);
 pthread_cond_destroy(&q->cond);

 av_free_packet(&q->flush_packet.base);
}
