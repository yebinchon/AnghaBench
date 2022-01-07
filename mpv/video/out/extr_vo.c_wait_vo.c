
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int need_wakeup; int lock; } ;
struct vo {TYPE_1__* driver; struct vo_internal* in; } ;
typedef int int64_t ;
struct TYPE_2__ {int (* wait_events ) (struct vo*,int ) ;} ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct vo*,int ) ;
 int vo_wait_default (struct vo*,int ) ;

__attribute__((used)) static void wait_vo(struct vo *vo, int64_t until_time)
{
    struct vo_internal *in = vo->in;

    if (vo->driver->wait_events) {
        vo->driver->wait_events(vo, until_time);
    } else {
        vo_wait_default(vo, until_time);
    }
    pthread_mutex_lock(&in->lock);
    in->need_wakeup = 0;
    pthread_mutex_unlock(&in->lock);
}
