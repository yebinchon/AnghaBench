
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {TYPE_1__* in; } ;
struct TYPE_2__ {int failed; struct mp_filter* parent; scalar_t__ error_handler; } ;


 int add_pending (scalar_t__) ;

void mp_filter_internal_mark_failed(struct mp_filter *f)
{
    while (f) {
        f->in->failed = 1;
        if (f->in->error_handler) {
            add_pending(f->in->error_handler);
            break;
        }
        f = f->in->parent;
    }
}
