
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int dummy; } ;
struct mp_image {int dummy; } ;


 struct mp_image* mp_refqueue_get (struct mp_refqueue*,int) ;
 scalar_t__ mp_refqueue_is_top_field (struct mp_refqueue*) ;
 scalar_t__ mp_refqueue_top_field_first (struct mp_refqueue*) ;

struct mp_image *mp_refqueue_get_field(struct mp_refqueue *q, int pos)
{



    int round = mp_refqueue_top_field_first(q) != mp_refqueue_is_top_field(q);
    int frame = (pos < 0 ? pos - (1 - round) : pos + round) / 2;
    return mp_refqueue_get(q, frame);
}
