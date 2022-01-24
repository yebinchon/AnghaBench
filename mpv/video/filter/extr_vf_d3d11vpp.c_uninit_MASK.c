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
struct priv {scalar_t__ vo_dev; scalar_t__ device_ctx; scalar_t__ video_dev; scalar_t__ video_ctx; int /*<<< orphan*/  pool; int /*<<< orphan*/  queue; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    FUNC4(vf);

    FUNC5(vf);
    FUNC6(p->queue);
    FUNC6(p->pool);

    if (p->video_ctx)
        FUNC2(p->video_ctx);

    if (p->video_dev)
        FUNC3(p->video_dev);

    if (p->device_ctx)
        FUNC0(p->device_ctx);

    if (p->vo_dev)
        FUNC1(p->vo_dev);
}