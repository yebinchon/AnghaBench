
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct TYPE_2__ {struct mp_filter* error_handler; } ;



void mp_filter_set_error_handler(struct mp_filter *f, struct mp_filter *handler)
{
    f->in->error_handler = handler;
}
