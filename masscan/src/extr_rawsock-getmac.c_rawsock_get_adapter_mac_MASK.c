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
struct TYPE_3__ {int sa_family; int /*<<< orphan*/  sa_data; } ;
struct TYPE_4__ {TYPE_1__ ifru_hwaddr; } ;
struct ifreq {TYPE_2__ ifr_ifru; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  SIOCGIFHWADDR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int
FUNC8(const char *ifname, unsigned char *mac)
{
    int fd;
    int x;
    struct ifreq ifr;


    fd = FUNC6(AF_INET, SOCK_STREAM, 0);
    if(fd < 0){
        FUNC5("socket");
        goto end;
    }

    FUNC7(ifr.ifr_name, IFNAMSIZ, ifname);
    x = FUNC2(fd, SIOCGIFHWADDR, (char *)&ifr);
    if (x < 0) {
        FUNC5("ioctl");
        goto end;
    }

    /* Log helpful info about the interface type */
    switch (ifr.ifr_ifru.ifru_hwaddr.sa_family) {
    case 1:
        FUNC0(1, "if:%s: type=ethernet(1)\n", ifname);
        break;
    default:
        FUNC0(1, "if:%s: type=0x%04x\n", ifname, ifr.ifr_ifru.ifru_hwaddr.sa_family);
    }


    FUNC4(mac, ifr.ifr_ifru.ifru_hwaddr.sa_data, 6);

    /*
     * [KLUDGE]
     *  For VPN tunnels with raw IP there isn't a hardware address, so just
     *  return a fake one instead.
     */
    if (FUNC3(mac, "\0\0\0\0\0\0", 6) == 0
            && ifr.ifr_ifru.ifru_hwaddr.sa_family == 0xfffe) {
        FUNC0(1, "%s: creating fake address\n", ifname);
        mac[5] = 1;
    }

end:
    FUNC1(fd);
    return 0;
}