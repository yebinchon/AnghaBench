
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_subfilter {int in; } ;
struct mp_filter {int dummy; } ;


 int mp_filter_internal_mark_progress (struct mp_filter*) ;
 struct mp_filter* mp_pin_get_manual_connection (int ) ;

__attribute__((used)) static void mark_progress(struct mp_subfilter *sub)
{

    struct mp_filter *f = mp_pin_get_manual_connection(sub->in);
    if (f)
        mp_filter_internal_mark_progress(f);
}
