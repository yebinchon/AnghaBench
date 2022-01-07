
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_filter_internal {int num_children; struct mp_filter** children; } ;
struct mp_filter {TYPE_3__* in; int * ppins; scalar_t__ num_pins; } ;
struct filter_runner {int num_pending; struct filter_runner* async_pending; int async_lock; struct mp_filter* root_filter; struct mp_filter** pending; } ;
struct TYPE_6__ {TYPE_2__* parent; TYPE_1__* info; struct filter_runner* runner; } ;
struct TYPE_5__ {struct mp_filter_internal* in; } ;
struct TYPE_4__ {int (* destroy ) (struct mp_filter*) ;} ;


 int MP_TARRAY_REMOVE_AT (struct mp_filter**,int,int) ;
 int assert (int) ;
 int flush_async_notifications (struct filter_runner*) ;
 int mp_filter_free_children (struct mp_filter*) ;
 int mp_filter_remove_pin (struct mp_filter*,int ) ;
 int pthread_mutex_destroy (int *) ;
 int stub1 (struct mp_filter*) ;
 int talloc_free (struct filter_runner*) ;

__attribute__((used)) static void filter_destructor(void *p)
{
    struct mp_filter *f = p;
    struct filter_runner *r = f->in->runner;

    if (f->in->info->destroy)
        f->in->info->destroy(f);


    mp_filter_free_children(f);

    while (f->num_pins)
        mp_filter_remove_pin(f, f->ppins[0]);



    flush_async_notifications(r);

    for (int n = 0; n < r->num_pending; n++) {
        if (r->pending[n] == f) {
            MP_TARRAY_REMOVE_AT(r->pending, r->num_pending, n);
            break;
        }
    }

    if (f->in->parent) {
        struct mp_filter_internal *p_in = f->in->parent->in;
        for (int n = 0; n < p_in->num_children; n++) {
            if (p_in->children[n] == f) {
                MP_TARRAY_REMOVE_AT(p_in->children, p_in->num_children, n);
                break;
            }
        }
    }

    if (r->root_filter == f) {
        assert(!f->in->parent);
        pthread_mutex_destroy(&r->async_lock);
        talloc_free(r->async_pending);
        talloc_free(r);
    }
}
