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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct ifreq {struct sockaddr ifr_addr; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFADDR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

unsigned
FUNC7(const char *ifname)
{
    int fd;
    struct ifreq ifr;
    struct sockaddr_in *sin;
    struct sockaddr *sa;
    int x;

    fd = FUNC4(AF_INET, SOCK_DGRAM, 0);

    ifr.ifr_addr.sa_family = AF_INET;
    FUNC5(ifr.ifr_name, IFNAMSIZ, ifname);

    x = FUNC2(fd, SIOCGIFADDR, &ifr);
    if (x < 0) {
        FUNC1(stderr, "ERROR:'%s': %s\n", ifname, FUNC6(errno));
        //fprintf(stderr, "ERROR:'%s': couldn't discover IP address of network interface\n", ifname);
        FUNC0(fd);
        return 0;
    }

    FUNC0(fd);

    sa = &ifr.ifr_addr;
    sin = (struct sockaddr_in *)sa;
    return FUNC3(sin->sin_addr.s_addr);
}