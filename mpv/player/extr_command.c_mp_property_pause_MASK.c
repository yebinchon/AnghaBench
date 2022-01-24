#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m_property {int dummy; } ;
struct TYPE_4__ {scalar_t__ playback_initialized; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_SET ; 
 int FUNC0 (TYPE_1__*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    MPContext *mpctx = ctx;

    if (mpctx->playback_initialized && action == M_PROPERTY_SET) {
        FUNC1(mpctx, *(int *)arg);
        return M_PROPERTY_OK;
    }
    return FUNC0(mpctx, prop, action, arg);
}