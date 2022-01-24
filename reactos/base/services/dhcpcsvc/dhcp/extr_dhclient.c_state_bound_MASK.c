#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_4__* client; } ;
struct TYPE_12__ {int len; int /*<<< orphan*/  iabuf; } ;
struct TYPE_11__ {TYPE_2__* options; } ;
struct TYPE_7__ {int /*<<< orphan*/  xid; } ;
struct TYPE_10__ {int /*<<< orphan*/  state; TYPE_3__* config; int /*<<< orphan*/  interval; int /*<<< orphan*/  first_sending; TYPE_6__ destination; TYPE_5__* active; TYPE_1__ packet; int /*<<< orphan*/  xid; } ;
struct TYPE_9__ {int /*<<< orphan*/  initial_interval; } ;
struct TYPE_8__ {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t DHO_DHCP_SERVER_IDENTIFIER ; 
 int /*<<< orphan*/  S_BOUND ; 
 int /*<<< orphan*/  S_RENEWING ; 
 TYPE_6__ iaddr_broadcast ; 
 int /*<<< orphan*/  FUNC1 (struct interface_info*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct interface_info*) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void *ipp)
{
	struct interface_info *ip = ipp;

	FUNC0(state, S_BOUND);

	/* T1 has expired. */
	FUNC1(ip, ip->client->active);
	ip->client->xid = ip->client->packet.xid;

	if (ip->client->active->options[DHO_DHCP_SERVER_IDENTIFIER].len == 4) {
		FUNC2(ip->client->destination.iabuf, ip->client->active->
		    options[DHO_DHCP_SERVER_IDENTIFIER].data, 4);
		ip->client->destination.len = 4;
	} else
		ip->client->destination = iaddr_broadcast;

	FUNC4(&ip->client->first_sending);
	ip->client->interval = ip->client->config->initial_interval;
	ip->client->state = S_RENEWING;

	/* Send the first packet immediately. */
	FUNC3(ip);
}