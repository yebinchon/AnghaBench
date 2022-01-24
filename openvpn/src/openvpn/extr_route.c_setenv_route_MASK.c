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
struct route_ipv4 {int flags; int /*<<< orphan*/  metric; int /*<<< orphan*/  gateway; int /*<<< orphan*/  netmask; int /*<<< orphan*/  network; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int RT_DEFINED ; 
 int RT_METRIC_DEFINED ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct env_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct env_set *es, const struct route_ipv4 *r, int i)
{
    struct gc_arena gc = FUNC4();
    if (r->flags & RT_DEFINED)
    {
        FUNC6(es, "network", r->network, i);
        FUNC6(es, "netmask", r->netmask, i);
        FUNC6(es, "gateway", r->gateway, i);

        if (r->flags & RT_METRIC_DEFINED)
        {
            struct buffer name = FUNC1(256, &gc);
            FUNC2(&name, "route_metric_%d", i);
            FUNC5(es, FUNC0(&name), r->metric);
        }
    }
    FUNC3(&gc);
}