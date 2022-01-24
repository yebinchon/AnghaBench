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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct mp_hwdec_ctx *FUNC2(struct mp_hwdec_devices *devs, int n)
{
    FUNC0(&devs->lock);
    struct mp_hwdec_ctx *res = n < devs->num_hwctxs ? devs->hwctxs[n] : NULL;
    FUNC1(&devs->lock);
    return res;
}