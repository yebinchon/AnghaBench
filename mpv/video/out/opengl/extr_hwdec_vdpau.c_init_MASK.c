#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {int /*<<< orphan*/  devs; TYPE_1__* driver; scalar_t__ probing; int /*<<< orphan*/  log; struct priv_owner* priv; int /*<<< orphan*/  ra; } ;
struct priv_owner {TYPE_4__* ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  driver_name; } ;
struct TYPE_10__ {TYPE_7__ hwctx; } ;
struct TYPE_9__ {int mpgl_caps; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ GL ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int MPGL_CAP_VDPAU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ra_hwdec *hw)
{
    Display *x11disp = FUNC4(hw->ra, "x11");
    if (!x11disp || !FUNC6(hw->ra))
        return -1;
    GL *gl = FUNC5(hw->ra);
    if (!(gl->mpgl_caps & MPGL_CAP_VDPAU))
        return -1;
    struct priv_owner *p = hw->priv;
    p->ctx = FUNC1(hw->log, x11disp, true);
    if (!p->ctx)
        return -1;
    if (FUNC3(p->ctx, NULL) < 1)
        return -1;
    if (hw->probing && FUNC2(p->ctx))
        return -1;
    p->ctx->hwctx.driver_name = hw->driver->name;
    FUNC0(hw->devs, &p->ctx->hwctx);
    return 0;
}