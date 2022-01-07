
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int external_pending; struct mp_filter* root_filter; int num_pending; int pending; } ;
struct TYPE_2__ {int pending; struct filter_runner* runner; } ;


 int MP_TARRAY_APPEND (struct filter_runner*,int ,int ,struct mp_filter*) ;

__attribute__((used)) static void add_pending(struct mp_filter *f)
{
    struct filter_runner *r = f->in->runner;

    if (f->in->pending)
        return;



    f->in->pending = 1;
    MP_TARRAY_APPEND(r, r->pending, r->num_pending, f);


    if (f == r->root_filter)
        r->external_pending = 1;
}
