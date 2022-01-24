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
struct tpacket_req {int tp_block_size; int tp_block_nr; int tp_frame_nr; void* tp_frame_size; } ;
struct sockaddr_ll {int /*<<< orphan*/  sll_ifindex; int /*<<< orphan*/  sll_protocol; int /*<<< orphan*/  sll_family; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  laddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PACKET_TX_RING ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(char **ring)
{
	struct sockaddr_ll laddr = {};
	struct tpacket_req req = {};
	int fdt;

	fdt = FUNC7(PF_PACKET, SOCK_RAW, 0);
	if (fdt == -1)
		FUNC1(1, errno, "socket t");

	laddr.sll_family = AF_PACKET;
	laddr.sll_protocol = FUNC3(0);
	laddr.sll_ifindex = FUNC4("lo");
	if (!laddr.sll_ifindex)
		FUNC1(1, errno, "if_nametoindex");

	if (FUNC0(fdt, (void *)&laddr, sizeof(laddr)))
		FUNC1(1, errno, "bind fdt");

	req.tp_block_size = FUNC2();
	req.tp_block_nr   = 1;
	req.tp_frame_size = FUNC2();
	req.tp_frame_nr   = 1;

	if (FUNC6(fdt, SOL_PACKET, PACKET_TX_RING,
		       (void *)&req, sizeof(req)))
		FUNC1(1, errno, "setsockopt ring");

	*ring = FUNC5(0, req.tp_block_size * req.tp_block_nr,
		     PROT_READ | PROT_WRITE, MAP_SHARED, fdt, 0);
	if (*ring == MAP_FAILED)
		FUNC1(1, errno, "mmap");

	return fdt;
}