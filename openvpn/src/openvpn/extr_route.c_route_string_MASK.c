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
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 int RT_METRIC_DEFINED ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 

__attribute__((used)) static const char *
FUNC4(const struct route_ipv4 *r, struct gc_arena *gc)
{
    struct buffer out = FUNC1(256, gc);
    FUNC2(&out, "ROUTE network %s netmask %s gateway %s",
               FUNC3(r->network, 0, gc),
               FUNC3(r->netmask, 0, gc),
               FUNC3(r->gateway, 0, gc)
               );
    if (r->flags & RT_METRIC_DEFINED)
    {
        FUNC2(&out, " metric %d", r->metric);
    }
    return FUNC0(&out);
}