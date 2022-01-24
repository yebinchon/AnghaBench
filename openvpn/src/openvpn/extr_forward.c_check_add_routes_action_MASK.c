#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  route_wakeup_expire; int /*<<< orphan*/  route_wakeup; int /*<<< orphan*/  es; } ;
struct TYPE_4__ {int /*<<< orphan*/  tuntap; int /*<<< orphan*/  route_ipv6_list; int /*<<< orphan*/  route_list; } ;
struct context {TYPE_1__ c2; int /*<<< orphan*/  net_ctx; int /*<<< orphan*/  plugins; TYPE_2__ c1; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct context *c, const bool errors)
{
    FUNC0(&c->options, c->c1.route_list, c->c1.route_ipv6_list,
             c->c1.tuntap, c->plugins, c->c2.es, &c->net_ctx);
    FUNC3();
    FUNC1(&c->c2.route_wakeup);
    FUNC1(&c->c2.route_wakeup_expire);
    FUNC2(c, errors ? ISC_ERRORS : 0); /* client/p2p --route-delay was defined */
}