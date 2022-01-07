
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {double display_fps; int lock; } ;
struct vo {struct vo_internal* in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

double vo_get_display_fps(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    double res = vo->in->display_fps;
    pthread_mutex_unlock(&in->lock);
    return res;
}
