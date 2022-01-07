
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int need_wakeup; int wakeup; } ;
struct vo {TYPE_1__* driver; struct vo_internal* in; } ;
struct TYPE_2__ {int (* wakeup ) (struct vo*) ;} ;


 int pthread_cond_broadcast (int *) ;
 int stub1 (struct vo*) ;

__attribute__((used)) static void wakeup_locked(struct vo *vo)
{
    struct vo_internal *in = vo->in;

    pthread_cond_broadcast(&in->wakeup);
    if (vo->driver->wakeup)
        vo->driver->wakeup(vo);
    in->need_wakeup = 1;
}
