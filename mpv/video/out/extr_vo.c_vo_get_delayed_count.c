
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int lock; int delayed_count; } ;
struct vo {struct vo_internal* in; } ;
typedef int int64_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int64_t vo_get_delayed_count(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    int64_t res = vo->in->delayed_count;
    pthread_mutex_unlock(&in->lock);
    return res;
}
