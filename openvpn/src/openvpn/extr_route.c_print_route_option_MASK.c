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
struct route_option {int /*<<< orphan*/  metric; int /*<<< orphan*/  gateway; int /*<<< orphan*/  netmask; int /*<<< orphan*/  network; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(const struct route_option *ro, int level)
{
    FUNC0(level, "  route %s/%s/%s/%s",
        FUNC1(ro->network),
        FUNC1(ro->netmask),
        FUNC1(ro->gateway),
        FUNC1(ro->metric));
}