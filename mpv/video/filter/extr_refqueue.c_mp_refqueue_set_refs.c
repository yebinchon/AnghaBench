
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int needed_past_frames; int needed_future_frames; } ;


 int MPMAX (int,int) ;
 int assert (int) ;

void mp_refqueue_set_refs(struct mp_refqueue *q, int past, int future)
{
    assert(past >= 0 && future >= 0);
    q->needed_past_frames = past;
    q->needed_future_frames = MPMAX(future, 1);
}
