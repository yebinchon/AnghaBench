#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_hwdec_devices {int num_hwctxs; int /*<<< orphan*/  lock; struct mp_hwdec_ctx** hwctxs; } ;
struct mp_hwdec_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_hwdec_ctx**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mp_hwdec_devices *devs, struct mp_hwdec_ctx *ctx)
{
    FUNC1(&devs->lock);
    for (int n = 0; n < devs->num_hwctxs; n++) {
        if (devs->hwctxs[n] == ctx) {
            FUNC0(devs->hwctxs, devs->num_hwctxs, n);
            break;
        }
    }
    FUNC2(&devs->lock);
}