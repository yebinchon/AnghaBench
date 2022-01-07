
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {scalar_t__ num_queue; scalar_t__ pos; int queue; } ;
struct mp_image {int dummy; } ;


 int MP_TARRAY_INSERT_AT (struct mp_refqueue*,int ,scalar_t__,int ,struct mp_image*) ;
 int assert (int) ;

__attribute__((used)) static void mp_refqueue_add_input(struct mp_refqueue *q, struct mp_image *img)
{
    assert(img);

    MP_TARRAY_INSERT_AT(q, q->queue, q->num_queue, 0, img);
    q->pos++;

    assert(q->pos >= 0 && q->pos < q->num_queue);
}
