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
struct ra_hwdec {int /*<<< orphan*/  devs; struct priv_owner* priv; } ;
struct priv_owner {scalar_t__ d3d11_device; int /*<<< orphan*/  hwctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;

    FUNC1(hw->devs, &p->hwctx);

    if (p->d3d11_device)
        FUNC0(p->d3d11_device);
}