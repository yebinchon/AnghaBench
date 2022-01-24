#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {int /*<<< orphan*/  devs; struct priv_owner* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  av_device_ref; } ;
struct priv_owner {scalar_t__ d3d9ex; scalar_t__ device9ex; TYPE_1__ hwctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;

    FUNC3(hw->devs, &p->hwctx);
    FUNC2(&p->hwctx.av_device_ref);

    if (p->device9ex)
        FUNC1(p->device9ex);

    if (p->d3d9ex)
        FUNC0(p->d3d9ex);
}