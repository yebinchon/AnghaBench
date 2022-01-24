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
struct user_pass {int nocache; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct user_pass*,int) ; 

void
FUNC2(struct user_pass *up, const bool force)
{
    const bool nocache = up->nocache;
    static bool warn_shown = false;
    if (nocache || force)
    {
        FUNC1(up, sizeof(*up));
        up->nocache = nocache;
    }
    /*
     * don't show warning if the pass has been replaced by a token: this is an
     * artificial "auth-nocache"
     */
    else if (!warn_shown)
    {
        FUNC0(M_WARN, "WARNING: this configuration may cache passwords in memory -- use the auth-nocache option to prevent this");
        warn_shown = true;
    }
}