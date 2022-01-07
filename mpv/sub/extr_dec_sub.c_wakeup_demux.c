
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_dispatch_queue {int dummy; } ;


 int mp_dispatch_interrupt (struct mp_dispatch_queue*) ;

__attribute__((used)) static void wakeup_demux(void *ctx)
{
    struct mp_dispatch_queue *q = ctx;
    mp_dispatch_interrupt(q);
}
