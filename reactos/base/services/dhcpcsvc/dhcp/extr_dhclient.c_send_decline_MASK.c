#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_1__* client; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  packet_length; int /*<<< orphan*/  packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  inaddr_any ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct interface_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__ sockaddr_broadcast ; 

void
FUNC4(void *ipp)
{
	struct interface_info *ip = ipp;

	FUNC1("DHCPDECLINE on %s to %s port %d", ip->name,
	    FUNC0(sockaddr_broadcast.sin_addr),
	    FUNC2(sockaddr_broadcast.sin_port));

	/* Send out a packet. */
	(void) FUNC3(ip, &ip->client->packet, ip->client->packet_length,
	    inaddr_any, &sockaddr_broadcast, NULL);
}