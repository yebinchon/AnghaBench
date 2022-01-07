
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int pos; int num_queue; struct mp_image** queue; } ;
struct mp_image {int dummy; } ;



struct mp_image *mp_refqueue_get(struct mp_refqueue *q, int pos)
{
    int i = q->pos - pos;
    return i >= 0 && i < q->num_queue ? q->queue[i] : ((void*)0);
}
