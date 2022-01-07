
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int in_format; struct mp_image* next; } ;
struct mp_image {int dummy; } ;


 int abort () ;
 int mp_image_new_ref (struct mp_image*) ;
 int mp_image_unref_data (int ) ;
 int mp_image_unrefp (int *) ;
 int mp_refqueue_add_input (struct mp_refqueue*,struct mp_image*) ;
 int mp_refqueue_flush (struct mp_refqueue*) ;
 scalar_t__ mp_refqueue_has_output (struct mp_refqueue*) ;

struct mp_image *mp_refqueue_execute_reinit(struct mp_refqueue *q)
{
    if (mp_refqueue_has_output(q) || !q->next)
        return ((void*)0);

    struct mp_image *cur = q->next;
    q->next = ((void*)0);

    mp_image_unrefp(&q->in_format);
    mp_refqueue_flush(q);

    q->in_format = mp_image_new_ref(cur);
    if (!q->in_format)
        abort();
    mp_image_unref_data(q->in_format);

    mp_refqueue_add_input(q, cur);
    return cur;
}
