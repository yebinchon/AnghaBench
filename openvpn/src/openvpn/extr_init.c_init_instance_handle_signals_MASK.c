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
struct env_set {int dummy; } ;
struct context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct env_set const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct context *c, const struct env_set *env, const unsigned int flags)
{
    FUNC3();
    FUNC1(c, env, flags);
    FUNC2();

    /*
     * This is done so that signals thrown during
     * initialization can bring us back to
     * a management hold.
     */
    if (FUNC0(c))
    {
        FUNC4(c);
        FUNC5();
    }
}