
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_refqueue {TYPE_1__* conv; int in_format; } ;
struct TYPE_2__ {int f; } ;


 int mp_image_unrefp (int *) ;
 int mp_refqueue_flush (struct mp_refqueue*) ;
 int talloc_free (int ) ;

__attribute__((used)) static void refqueue_dtor(void *p)
{
    struct mp_refqueue *q = p;
    mp_refqueue_flush(q);
    mp_image_unrefp(&q->in_format);
    talloc_free(q->conv->f);
}
