
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int lock; int current_frame; } ;
struct vo_frame {int dummy; } ;
struct vo {struct vo_internal* in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct vo_frame* vo_frame_ref (int ) ;

struct vo_frame *vo_get_current_vo_frame(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    struct vo_frame *r = vo_frame_ref(vo->in->current_frame);
    pthread_mutex_unlock(&in->lock);
    return r;
}
