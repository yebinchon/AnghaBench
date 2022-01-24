#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_hwdec_devices {int num_hwctxs; int /*<<< orphan*/  lock; struct mp_hwdec_ctx** hwctxs; } ;
struct mp_hwdec_ctx {TYPE_1__* av_device_ref; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_2__ AVHWDeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct mp_hwdec_ctx *FUNC2(struct mp_hwdec_devices *devs,
                                               int av_hwdevice_type)
{
    struct mp_hwdec_ctx *res = NULL;
    FUNC0(&devs->lock);
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
    FUNC1(&devs->lock);
    return res;
}