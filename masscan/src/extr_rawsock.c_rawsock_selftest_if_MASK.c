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
struct Adapter {int dummy; } ;
typedef  int /*<<< orphan*/  ifname2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct Adapter*,unsigned int,unsigned char*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct Adapter*) ; 
 unsigned int FUNC7 (char const*) ; 
 int FUNC8 (char const*,unsigned char*) ; 
 int FUNC9 (char const*,unsigned int*) ; 
 int FUNC10 (char*,int) ; 
 struct Adapter* FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC12(const char *ifname)
{
    int err;
    unsigned ipv4 = 0;
    unsigned router_ipv4 = 0;
    unsigned char mac[6] = {0,0,0,0,0,0};
    struct Adapter *adapter;
    char ifname2[246];

    if (ifname == NULL || ifname[0] == 0) {
        err = FUNC10(ifname2, sizeof(ifname2));
        if (err) {
            FUNC2(stderr, "get-default-if: returned err %d\n", err);
            return -1;
        }
        ifname = ifname2;
    }

    /* Name */
    FUNC5("if = %s\n", ifname);

    /* IP address */
    ipv4 = FUNC7(ifname);
    if (ipv4 == 0) {
        FUNC2(stderr, "get-ip: returned err\n");
    } else {
        FUNC5("ip = %u.%u.%u.%u\n",
            (unsigned char)(ipv4>>24),
            (unsigned char)(ipv4>>16),
            (unsigned char)(ipv4>>8),
            (unsigned char)(ipv4>>0));
    }

    /* MAC address */
    err = FUNC8(ifname, mac);
    if (err) {
        FUNC2(stderr, "get-adapter-mac: returned err=%d\n", err);
    } else {
        FUNC5("mac = %02x-%02x-%02x-%02x-%02x-%02x\n",
            mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
    }

    /* Gateway IP */
    err = FUNC9(ifname, &router_ipv4);
    if (err) {
        FUNC2(stderr, "get-default-gateway: returned err=%d\n", err);
    } else {
        unsigned char router_mac[6];

        FUNC5("gateway = %u.%u.%u.%u\n",
            (unsigned char)(router_ipv4>>24),
            (unsigned char)(router_ipv4>>16),
            (unsigned char)(router_ipv4>>8),
            (unsigned char)(router_ipv4>>0));


        adapter = FUNC11(ifname, 0, 0, 0, 0, 0, 0, 0);
        if (adapter == 0) {
            FUNC0(1, "if:%s: failed\n", ifname);
            return -1;
        } else {
            FUNC5("pcap = opened\n");
        }

        FUNC4(router_mac, 0, 6);
        FUNC1(
                adapter,
                ipv4,
                mac,
                router_ipv4,
                router_mac);

        if (FUNC3(router_mac, "\0\0\0\0\0\0", 6) != 0) {
            FUNC5("gateway = %02x-%02x-%02x-%02x-%02x-%02x\n",
                router_mac[0],
                router_mac[1],
                router_mac[2],
                router_mac[3],
                router_mac[4],
                router_mac[5]
            );
        } else {
            FUNC5("gateway = [failed to ARP address]\n");
        }
        FUNC6(adapter);
    }

    return 0;
}