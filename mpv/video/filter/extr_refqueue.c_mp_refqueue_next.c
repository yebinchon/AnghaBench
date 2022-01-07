
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int pos; int second_field; int num_queue; int needed_past_frames; int * queue; } ;


 int assert (int) ;
 int mp_refqueue_has_output (struct mp_refqueue*) ;
 int talloc_free (int ) ;

__attribute__((used)) static void mp_refqueue_next(struct mp_refqueue *q)
{
    if (!mp_refqueue_has_output(q))
        return;

    q->pos--;
    q->second_field = 0;

    assert(q->pos >= -1 && q->pos < q->num_queue);


    while (q->num_queue - (q->pos + 1) > q->needed_past_frames) {
        assert(q->num_queue > 0);
        talloc_free(q->queue[q->num_queue - 1]);
        q->num_queue--;
    }

    assert(q->pos >= -1 && q->pos < q->num_queue);
}
