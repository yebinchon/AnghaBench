
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int num_hwctxs; int lock; struct mp_hwdec_ctx** hwctxs; } ;
struct mp_hwdec_ctx {int dummy; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mp_hwdec_ctx *hwdec_devices_get_n(struct mp_hwdec_devices *devs, int n)
{
    pthread_mutex_lock(&devs->lock);
    struct mp_hwdec_ctx *res = n < devs->num_hwctxs ? devs->hwctxs[n] : ((void*)0);
    pthread_mutex_unlock(&devs->lock);
    return res;
}
