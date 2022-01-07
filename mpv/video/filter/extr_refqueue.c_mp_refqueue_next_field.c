
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_refqueue {int dummy; } ;


 int mp_refqueue_has_output (struct mp_refqueue*) ;
 int mp_refqueue_next (struct mp_refqueue*) ;
 int output_next_field (struct mp_refqueue*) ;

__attribute__((used)) static void mp_refqueue_next_field(struct mp_refqueue *q)
{
    if (!mp_refqueue_has_output(q))
        return;

    if (!output_next_field(q))
        mp_refqueue_next(q);
}
