
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int filtering; } ;
struct TYPE_2__ {struct filter_runner* runner; } ;


 int add_pending (struct mp_filter*) ;
 int assert (int ) ;

void mp_filter_internal_mark_progress(struct mp_filter *f)
{
    struct filter_runner *r = f->in->runner;
    assert(r->filtering);
    add_pending(f);
}
