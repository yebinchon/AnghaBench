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
struct ra_hwdec {int /*<<< orphan*/  devs; struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  av_device_ref; } ;
struct priv {int /*<<< orphan*/ * ctx; TYPE_1__ hwctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_hwdec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;

    FUNC1(hw);
    FUNC4(hw, NULL);

    FUNC3(hw->devs, &p->hwctx);
    FUNC0(&p->hwctx.av_device_ref);

    if (p->ctx) {
        FUNC2(p->ctx);
        p->ctx = NULL;
    }
}