
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int num_hwctxs; int lock; struct mp_hwdec_ctx** hwctxs; } ;
struct mp_hwdec_ctx {int dummy; } ;


 int MP_TARRAY_REMOVE_AT (struct mp_hwdec_ctx**,int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void hwdec_devices_remove(struct mp_hwdec_devices *devs, struct mp_hwdec_ctx *ctx)
{
    pthread_mutex_lock(&devs->lock);
    for (int n = 0; n < devs->num_hwctxs; n++) {
        if (devs->hwctxs[n] == ctx) {
            MP_TARRAY_REMOVE_AT(devs->hwctxs, devs->num_hwctxs, n);
            break;
        }
    }
    pthread_mutex_unlock(&devs->lock);
}
