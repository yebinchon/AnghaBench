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
struct TYPE_2__ {int /*<<< orphan*/  last_av_difference; int /*<<< orphan*/  vo_chain; int /*<<< orphan*/  ao_chain; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_PRINT ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int FUNC0 (int,void*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                              int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->ao_chain || !mpctx->vo_chain)
        return M_PROPERTY_UNAVAILABLE;
    if (action == M_PROPERTY_PRINT) {
        *(char **)arg = FUNC1(NULL, "%7.3f", mpctx->last_av_difference);
        return M_PROPERTY_OK;
    }
    return FUNC0(action, arg, mpctx->last_av_difference);
}