
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* in; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int lock; int drop_count; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void vo_increment_drop_count(struct vo *vo, int64_t n)
{
    pthread_mutex_lock(&vo->in->lock);
    vo->in->drop_count += n;
    pthread_mutex_unlock(&vo->in->lock);
}
