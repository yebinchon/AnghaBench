#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct packet {int /*<<< orphan*/  client_addr; TYPE_2__* raw; struct interface_info* interface; } ;
struct TYPE_4__ {scalar_t__ hlen; int /*<<< orphan*/  haddr; } ;
struct interface_info {TYPE_3__* client; TYPE_1__ hw_address; } ;
struct TYPE_6__ {scalar_t__ xid; scalar_t__ state; int /*<<< orphan*/ * active; } ;
struct TYPE_5__ {scalar_t__ xid; scalar_t__ hlen; int /*<<< orphan*/  chaddr; } ;

/* Variables and functions */
 scalar_t__ S_INIT ; 
 scalar_t__ S_REBINDING ; 
 scalar_t__ S_REBOOTING ; 
 scalar_t__ S_RENEWING ; 
 scalar_t__ S_REQUESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct interface_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_request ; 
 int /*<<< orphan*/  FUNC5 (struct interface_info*) ; 

void
FUNC6(struct packet *packet)
{
	struct interface_info *ip = packet->interface;

	/* If we're not receptive to an offer right now, or if the offer
	   has an unrecognizable transaction id, then just drop it. */
	if (packet->interface->client->xid != packet->raw->xid ||
	    (packet->interface->hw_address.hlen != packet->raw->hlen) ||
	    (FUNC2(packet->interface->hw_address.haddr,
	    packet->raw->chaddr, packet->raw->hlen)))
		return;

	if (ip->client->state != S_REBOOTING &&
	    ip->client->state != S_REQUESTING &&
	    ip->client->state != S_RENEWING &&
	    ip->client->state != S_REBINDING)
		return;

	FUNC3("DHCPNAK from %s", FUNC4(packet->client_addr));

	if (!ip->client->active) {
		FUNC3("DHCPNAK with no active lease.\n");
		return;
	}

	FUNC1(ip->client->active);
	ip->client->active = NULL;

	/* Stop sending DHCPREQUEST packets... */
	FUNC0(send_request, ip);

	ip->client->state = S_INIT;
	FUNC5(ip);
}