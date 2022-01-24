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
struct gc_arena {int dummy; } ;
typedef  int in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WARN ; 
 int TOP_NET30 ; 
 int TOP_P2P ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  ifconfig_warn_how_to_silence ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct gc_arena*) ; 

__attribute__((used)) static void
FUNC4(bool tun, in_addr_t addr, int topology)
{
    struct gc_arena gc = FUNC1();
    const bool looks_like_netmask = ((addr & 0xFF000000) == 0xFF000000);
    if (tun)
    {
        if (looks_like_netmask && (topology == TOP_NET30 || topology == TOP_P2P))
        {
            FUNC2(M_WARN, "WARNING: Since you are using --dev tun with a point-to-point topology, the second argument to --ifconfig must be an IP address.  You are using something (%s) that looks more like a netmask. %s",
                FUNC3(addr, 0, &gc),
                ifconfig_warn_how_to_silence);
        }
    }
    else /* tap */
    {
        if (!looks_like_netmask)
        {
            FUNC2(M_WARN, "WARNING: Since you are using --dev tap, the second argument to --ifconfig must be a netmask, for example something like 255.255.255.0. %s",
                ifconfig_warn_how_to_silence);
        }
    }
    FUNC0(&gc);
}