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
struct TYPE_4__ {int /*<<< orphan*/  playback_initialized; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  MPSEEK_ABSOLUTE ; 
 int /*<<< orphan*/  MPSEEK_DEFAULT ; 
 int M_PROPERTY_OK ; 
 int M_PROPERTY_SET ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->playback_initialized)
        return M_PROPERTY_UNAVAILABLE;

    if (action == M_PROPERTY_SET) {
        FUNC2(mpctx, MPSEEK_ABSOLUTE, *(double *)arg, MPSEEK_DEFAULT, 0);
        return M_PROPERTY_OK;
    }
    return FUNC1(action, arg, FUNC0(mpctx));
}