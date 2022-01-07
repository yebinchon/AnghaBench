
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {int dummy; } ;


 int mp_filter_wakeup (struct mp_filter*) ;

__attribute__((used)) static void wakeup(void *ctx)
{
    struct mp_filter *f = ctx;

    mp_filter_wakeup(f);
}
