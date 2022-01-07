
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int root_filter; int external_pending; scalar_t__ filtering; } ;
struct TYPE_2__ {struct filter_runner* runner; } ;


 int assert (struct mp_filter*) ;
 int mp_filter_run (int ) ;

__attribute__((used)) static void filter_recursive(struct mp_filter *f)
{
    assert(f);
    struct filter_runner *r = f->in->runner;


    if (r->filtering)
        return;



    r->external_pending |= mp_filter_run(r->root_filter);
}
