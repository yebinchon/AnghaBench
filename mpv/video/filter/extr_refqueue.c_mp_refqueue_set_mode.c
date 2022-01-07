
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int flags; } ;



void mp_refqueue_set_mode(struct mp_refqueue *q, int flags)
{
    q->flags = flags;
}
