
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {scalar_t__ pos; scalar_t__ needed_future_frames; int eof; } ;



__attribute__((used)) static bool mp_refqueue_need_input(struct mp_refqueue *q)
{
    return q->pos < q->needed_future_frames && !q->eof;
}
