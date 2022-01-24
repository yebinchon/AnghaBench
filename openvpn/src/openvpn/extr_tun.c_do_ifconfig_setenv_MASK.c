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
struct tuntap {int /*<<< orphan*/  netbits_ipv6; int /*<<< orphan*/  remote_ipv6; int /*<<< orphan*/  local_ipv6; scalar_t__ did_ifconfig_ipv6_setup; scalar_t__ did_ifconfig_setup; int /*<<< orphan*/  remote_netmask; int /*<<< orphan*/  local; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int FUNC2 (struct tuntap const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC5 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,char*,char const*) ; 

void
FUNC7(const struct tuntap *tt, struct env_set *es)
{
    struct gc_arena gc = FUNC1();
    const char *ifconfig_local = FUNC4(tt->local, 0, &gc);
    const char *ifconfig_remote_netmask = FUNC4(tt->remote_netmask, 0, &gc);

    /*
     * Set environmental variables with ifconfig parameters.
     */
    if (tt->did_ifconfig_setup)
    {
        bool tun = FUNC2(tt);

        FUNC6(es, "ifconfig_local", ifconfig_local);
        if (tun)
        {
            FUNC6(es, "ifconfig_remote", ifconfig_remote_netmask);
        }
        else
        {
            FUNC6(es, "ifconfig_netmask", ifconfig_remote_netmask);
        }
    }

    if (tt->did_ifconfig_ipv6_setup)
    {
        const char *ifconfig_ipv6_local = FUNC3(tt->local_ipv6, 0, &gc);
        const char *ifconfig_ipv6_remote = FUNC3(tt->remote_ipv6, 0, &gc);

        FUNC6(es, "ifconfig_ipv6_local", ifconfig_ipv6_local);
        FUNC5(es, "ifconfig_ipv6_netbits", tt->netbits_ipv6);
        FUNC6(es, "ifconfig_ipv6_remote", ifconfig_ipv6_remote);
    }

    FUNC0(&gc);
}