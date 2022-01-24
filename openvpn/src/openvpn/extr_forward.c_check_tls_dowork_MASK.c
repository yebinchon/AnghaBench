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
struct TYPE_2__ {int /*<<< orphan*/  tmp_int; int /*<<< orphan*/  to_link_addr; int /*<<< orphan*/  to_link; int /*<<< orphan*/  tls_multi; } ;
struct context {TYPE_1__ c2; } ;
typedef  scalar_t__ interval_t ;

/* Variables and functions */
 scalar_t__ BIG_TIMEOUT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int const TLSMP_ACTIVE ; 
 int const TLSMP_KILL ; 
 int /*<<< orphan*/  FUNC0 (struct context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct context*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(struct context *c)
{
    interval_t wakeup = BIG_TIMEOUT;

    if (FUNC5(&c->c2.tmp_int))
    {
        const int tmp_status = FUNC7
                                   (c->c2.tls_multi, &c->c2.to_link, &c->c2.to_link_addr,
                                   FUNC1(c), &wakeup);
        if (tmp_status == TLSMP_ACTIVE)
        {
            FUNC8();
            FUNC2(&c->c2.tmp_int);
        }
        else if (tmp_status == TLSMP_KILL)
        {
            FUNC6(c, SIGTERM, "auth-control-exit");
        }

        FUNC3(&c->c2.tmp_int, wakeup);
    }

    FUNC4(&c->c2.tmp_int, &wakeup);

    if (wakeup)
    {
        FUNC0(c, wakeup);
    }
}