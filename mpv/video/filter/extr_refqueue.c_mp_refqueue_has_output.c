
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {scalar_t__ pos; } ;


 int mp_refqueue_need_input (struct mp_refqueue*) ;

__attribute__((used)) static bool mp_refqueue_has_output(struct mp_refqueue *q)
{
    return q->pos >= 0 && !mp_refqueue_need_input(q);
}
