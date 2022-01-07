
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_packet_queue {int flush_packet; } ;


 int packet_queue_put (struct ff_packet_queue*,int *) ;

int packet_queue_put_flush_packet(struct ff_packet_queue *q)
{
 return packet_queue_put(q, &q->flush_packet);
}
