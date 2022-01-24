#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  p; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ pw ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,double const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ justprint ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* pw_params ; 

__attribute__((used)) static int FUNC3(int i)
{
    int t = 0, r;
    const double frac = 2.0 / 3.0;
    const pw *pwp = &pw_params[i];

    if (justprint)
        FUNC2("    {\n");
    r = FUNC0(FUNC1(i, t++, 0.0, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 0.67, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, frac, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, frac / 1000, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, frac / 10000, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 6.0 + frac, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 66.0 + frac, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 666.0 + frac, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 6666.0 + frac, pwp->w, pwp->p))
        && FUNC0(FUNC1(i, t++, 66666.0 + frac, pwp->w, pwp->p));
    if (justprint)
        FUNC2("    },\n");
    return r;
}