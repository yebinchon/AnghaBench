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
struct TYPE_2__ {int /*<<< orphan*/  remote_endpoint; int /*<<< orphan*/  flags; } ;
struct route_list {TYPE_1__ spec; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct route_list*) ; 
 int /*<<< orphan*/  RTSA_REMOTE_ENDPOINT ; 
 int /*<<< orphan*/  FUNC1 (struct env_set*,char*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct route_list *rl,
                           struct env_set *es,
                           const in_addr_t addr)
{
    FUNC0(rl);
    rl->spec.remote_endpoint = addr;
    rl->spec.flags |= RTSA_REMOTE_ENDPOINT;
    FUNC1(es, "vpn_gateway", rl->spec.remote_endpoint, -1);
}