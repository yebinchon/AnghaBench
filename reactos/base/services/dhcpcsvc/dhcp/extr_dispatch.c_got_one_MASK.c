#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct protocol {int /*<<< orphan*/  fd; struct interface_info* local; } ;
struct interface_info {int errors; int dead; int /*<<< orphan*/  name; } ;
struct iaddr {int len; int /*<<< orphan*/  iabuf; } ;
struct hardware {int dummy; } ;
struct dhcp_packet {int /*<<< orphan*/  hlen; int /*<<< orphan*/  chaddr; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  DhclientInfo; int /*<<< orphan*/  ListEntry; } ;
typedef  TYPE_1__* PDHCP_ADAPTER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct interface_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dhcp_packet*,int,int /*<<< orphan*/ ,struct iaddr,struct hardware*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct interface_info*,unsigned char*,int,struct sockaddr_in*,struct hardware*) ; 
 int /*<<< orphan*/  FUNC9 (struct protocol*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct dhcp_packet*,int,int /*<<< orphan*/ ,struct iaddr,struct hardware*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

void
FUNC12(struct protocol *l)
{
    struct sockaddr_in from;
    struct hardware hfrom;
    struct iaddr ifrom;
    ssize_t result;
    union {
        /*
         * Packet input buffer.  Must be as large as largest
         * possible MTU.
         */
        unsigned char packbuf[4095];
        struct dhcp_packet packet;
    } u;
    struct interface_info *ip = l->local;
    PDHCP_ADAPTER adapter;

    if ((result = FUNC8(ip, u.packbuf, sizeof(u), &from,
                                 &hfrom)) == -1) {
        FUNC11("receive_packet failed on %s: %d", ip->name,
                FUNC3());
        ip->errors++;
        if (ip->errors > 20) {
            /* our interface has gone away. */
            FUNC11("Interface %s no longer appears valid.",
                    ip->name);
            ip->dead = 1;
            FUNC5(l->fd);
            FUNC9(l);
            adapter = FUNC1(ip);
            if (adapter) {
                FUNC2(&adapter->ListEntry);
                FUNC6(adapter);
            }
        }
        return;
    }
    if (result == 0)
        return;

    if (&bootp_packet_handler) {
        ifrom.len = 4;
        FUNC7(ifrom.iabuf, &from.sin_addr, ifrom.len);

        
        adapter = FUNC0(u.packet.chaddr,
                                               u.packet.hlen);

        if (!adapter) {
            FUNC11("Discarding packet with a non-matching target physical address\n");
            return;
        }

        FUNC4)(&adapter->DhclientInfo, &u.packet, result,
                                from.sin_port, ifrom, &hfrom);
    }
}