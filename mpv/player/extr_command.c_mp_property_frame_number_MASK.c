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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                    int action, void *arg)
{
    MPContext *mpctx = ctx;
    int frames = FUNC1(mpctx);
    if (frames < 0)
        return M_PROPERTY_UNAVAILABLE;

    return FUNC3(action, arg,
        FUNC2(FUNC0(mpctx, false) * frames));
}