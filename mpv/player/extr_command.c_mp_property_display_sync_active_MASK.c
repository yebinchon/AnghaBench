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
struct TYPE_2__ {int /*<<< orphan*/  display_sync_active; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int FUNC0 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *ctx, struct m_property *prop,
                                           int action, void *arg)
{
    MPContext *mpctx = ctx;
    return FUNC0(action, arg, mpctx->display_sync_active);
}