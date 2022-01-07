
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int lock; int num_hwctxs; int hwctxs; } ;
struct mp_hwdec_ctx {int dummy; } ;


 int MP_TARRAY_APPEND (struct mp_hwdec_devices*,int ,int ,struct mp_hwdec_ctx*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void hwdec_devices_add(struct mp_hwdec_devices *devs, struct mp_hwdec_ctx *ctx)
{
    pthread_mutex_lock(&devs->lock);
    MP_TARRAY_APPEND(devs, devs->hwctxs, devs->num_hwctxs, ctx);
    pthread_mutex_unlock(&devs->lock);
}
