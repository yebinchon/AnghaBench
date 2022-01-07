
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int vsync_interval; int lock; } ;
struct vo {struct vo_internal* in; } ;
typedef int int64_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int64_t vo_get_vsync_interval(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    int64_t res = vo->in->vsync_interval > 1 ? vo->in->vsync_interval : -1;
    pthread_mutex_unlock(&in->lock);
    return res;
}
