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
struct m_property {int dummy; } ;
struct MPContext {int dummy; } ;

/* Variables and functions */
 int M_PROPERTY_ERROR ; 
 int /*<<< orphan*/  M_PROPERTY_GET ; 
 int M_PROPERTY_KEY_ACTION ; 
 int M_PROPERTY_SET ; 
 int /*<<< orphan*/  OSD_BAR_SEEK ; 
 int FUNC0 (struct MPContext*,struct m_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int FUNC2 (int,void*,double) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 

__attribute__((used)) static int FUNC5(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    if (action == M_PROPERTY_KEY_ACTION) {
        double val;
        if (FUNC0(mpctx, prop, M_PROPERTY_GET, &val) < 1)
            return M_PROPERTY_ERROR;

        return FUNC2(action, arg, val);
    }
    int r = FUNC0(mpctx, prop, action, arg);
    if (r > 0 && action == M_PROPERTY_SET) {
        FUNC4(mpctx);
        // Update if visible
        FUNC3(mpctx, OSD_BAR_SEEK);
        FUNC1(mpctx);
    }
    return r;
}