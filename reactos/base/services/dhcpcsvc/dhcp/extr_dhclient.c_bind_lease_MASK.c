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
typedef  scalar_t__ time_t ;
struct interface_info {TYPE_1__* client; } ;
struct client_lease {scalar_t__ renewal; int /*<<< orphan*/  address; int /*<<< orphan*/  medium; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; struct client_lease* active; struct client_lease* new; int /*<<< orphan*/  medium; } ;
typedef  scalar_t__ PDHCP_ADAPTER ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct interface_info*) ; 
 int /*<<< orphan*/  S_BOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct interface_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct client_lease*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct client_lease*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct client_lease*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct client_lease*) ; 
 int /*<<< orphan*/  state_bound ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct interface_info*) ; 

void
FUNC10(struct interface_info *ip)
{
    PDHCP_ADAPTER Adapter;
    struct client_lease *new_lease = ip->client->new;
    time_t cur_time;

    FUNC8(&cur_time);

    /* Remember the medium. */
    ip->client->new->medium = ip->client->medium;

    /* Replace the old active lease with the new one. */
    if (ip->client->active)
        FUNC2(ip->client->active);
    ip->client->active = ip->client->new;
    ip->client->new = NULL;

    /* Set up a timeout to start the renewal process. */
    /* Timeout of zero means no timeout (some implementations seem to use
     * one day).
     */
    if( ip->client->active->renewal - cur_time )
        FUNC1(ip->client->active->renewal, state_bound, ip);

    FUNC3("bound to %s -- renewal in %ld seconds.",
         FUNC4(ip->client->active->address),
         (long int)(ip->client->active->renewal - cur_time));

    ip->client->state = S_BOUND;

    Adapter = FUNC0( ip );

    if( Adapter )  FUNC7( Adapter, new_lease );
    else {
        FUNC9("Could not find adapter for info %p\n", ip);
        return;
    }
    FUNC6( Adapter, new_lease );
    FUNC5( Adapter, new_lease );
}