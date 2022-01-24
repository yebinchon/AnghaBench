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
typedef  int /*<<< orphan*/  MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,void*,int) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                                       int action, void *arg)
{
    MPContext *mpctx = ctx;
    int state = FUNC0(mpctx);
    if (state < 0)
        return M_PROPERTY_UNAVAILABLE;
    return FUNC1(action, arg, state);
}