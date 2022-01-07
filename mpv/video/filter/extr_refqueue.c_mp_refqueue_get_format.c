
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {struct mp_image* in_format; } ;
struct mp_image {int dummy; } ;



struct mp_image *mp_refqueue_get_format(struct mp_refqueue *q)
{
    return q->in_format;
}
