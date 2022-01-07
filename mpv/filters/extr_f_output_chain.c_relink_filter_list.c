
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_user_filter {int dummy; } ;
struct mp_filter {int ** pins; } ;
struct chain {int num_pre_filters; int num_user_filters; int num_post_filters; scalar_t__ num_all_filters; int * filters_out; int * filters_in; TYPE_1__** all_filters; struct mp_user_filter** post_filters; struct mp_user_filter** user_filters; struct mp_user_filter** pre_filters; } ;
struct TYPE_2__ {struct mp_filter* wrapper; } ;


 int MP_TARRAY_APPEND (struct chain*,TYPE_1__**,scalar_t__,struct mp_user_filter*) ;
 int assert (int) ;
 int mp_pin_connect (int *,int *) ;

__attribute__((used)) static void relink_filter_list(struct chain *p)
{
    struct mp_user_filter **all_filters[3] =
        {p->pre_filters, p->user_filters, p->post_filters};
    int all_filters_num[3] =
        {p->num_pre_filters, p->num_user_filters, p->num_post_filters};
    p->num_all_filters = 0;
    for (int n = 0; n < 3; n++) {
        struct mp_user_filter **filters = all_filters[n];
        int filters_num = all_filters_num[n];
        for (int i = 0; i < filters_num; i++)
            MP_TARRAY_APPEND(p, p->all_filters, p->num_all_filters, filters[i]);
    }

    assert(p->num_all_filters > 0);

    p->filters_in = ((void*)0);
    p->filters_out = ((void*)0);
    for (int n = 0; n < p->num_all_filters; n++) {
        struct mp_filter *f = p->all_filters[n]->wrapper;
        if (n == 0)
            p->filters_in = f->pins[0];
        if (p->filters_out)
            mp_pin_connect(f->pins[0], p->filters_out);
        p->filters_out = f->pins[1];
    }
}
