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
struct m_property {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mistimed_frames_total; int /*<<< orphan*/  display_sync_active; int /*<<< orphan*/  vo_chain; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int FUNC0 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *ctx, struct m_property *prop,
                                            int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->vo_chain || !mpctx->display_sync_active)
        return M_PROPERTY_UNAVAILABLE;

    return FUNC0(action, arg, mpctx->mistimed_frames_total);
}