
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_hwdec_devices {int num_hwctxs; int lock; struct mp_hwdec_ctx** hwctxs; } ;
struct mp_hwdec_ctx {TYPE_1__* av_device_ref; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_2__ AVHWDeviceContext ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mp_hwdec_ctx *hwdec_devices_get_by_lavc(struct mp_hwdec_devices *devs,
                                               int av_hwdevice_type)
{
    struct mp_hwdec_ctx *res = ((void*)0);
    pthread_mutex_lock(&devs->lock);
    for (int n = 0; n < devs->num_hwctxs; n++) {
        struct mp_hwdec_ctx *dev = devs->hwctxs[n];
        if (dev->av_device_ref) {
            AVHWDeviceContext *hwctx = (void *)dev->av_device_ref->data;
            if (hwctx->type == av_hwdevice_type) {
                res = dev;
                break;
            }
        }
    }
    pthread_mutex_unlock(&devs->lock);
    return res;
}
