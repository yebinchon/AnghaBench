
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int lock; TYPE_1__* current_frame; } ;
struct vo {struct vo_internal* in; } ;
struct mp_image {int dummy; } ;
struct TYPE_2__ {int current; } ;


 struct mp_image* mp_image_new_ref (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mp_image *vo_get_current_frame(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    struct mp_image *r = ((void*)0);
    if (vo->in->current_frame)
        r = mp_image_new_ref(vo->in->current_frame->current);
    pthread_mutex_unlock(&in->lock);
    return r;
}
