
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int num_queue; int pos; int second_field; int eof; int next; int * queue; } ;


 int mp_image_unrefp (int *) ;
 int talloc_free (int ) ;

void mp_refqueue_flush(struct mp_refqueue *q)
{
    for (int n = 0; n < q->num_queue; n++)
        talloc_free(q->queue[n]);
    q->num_queue = 0;
    q->pos = -1;
    q->second_field = 0;
    q->eof = 0;
    mp_image_unrefp(&q->next);
}
