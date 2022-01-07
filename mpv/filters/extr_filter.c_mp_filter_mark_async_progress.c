
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {int dummy; } ;


 int filter_wakeup (struct mp_filter*,int) ;

void mp_filter_mark_async_progress(struct mp_filter *f)
{
    filter_wakeup(f, 1);
}
