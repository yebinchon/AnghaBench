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
struct TYPE_4__ {int /*<<< orphan*/  netbits_ipv6; int /*<<< orphan*/  addr_ipv6; } ;
struct route_ipv6_gateway_info {int flags; int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  iface; int /*<<< orphan*/  adapter_index; TYPE_2__ gateway; } ;
struct TYPE_3__ {int /*<<< orphan*/  netmask; int /*<<< orphan*/  addr; } ;
struct route_gateway_info {int flags; int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  iface; int /*<<< orphan*/  adapter_index; TYPE_1__ gateway; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int RGI_ADDR_DEFINED ; 
 int RGI_HWADDR_DEFINED ; 
 int RGI_IFACE_DEFINED ; 
 int RGI_NETMASK_DEFINED ; 
 int RGI_ON_LINK ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,char*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (struct gc_arena*) ; 
 struct gc_arena FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int const,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 

void
FUNC9(const int msglevel,
                      const struct route_gateway_info *rgi,
                      const struct route_ipv6_gateway_info *rgi6)
{
    struct gc_arena gc = FUNC5();
    if (rgi && (rgi->flags & RGI_ADDR_DEFINED))
    {
        struct buffer out = FUNC1(256, &gc);
        FUNC2(&out, "ROUTE_GATEWAY");
        if (rgi->flags & RGI_ON_LINK)
        {
            FUNC2(&out, " ON_LINK");
        }
        else
        {
            FUNC2(&out, " %s", FUNC8(rgi->gateway.addr, 0, &gc));
        }
        if (rgi->flags & RGI_NETMASK_DEFINED)
        {
            FUNC2(&out, "/%s", FUNC8(rgi->gateway.netmask, 0, &gc));
        }
#ifdef _WIN32
        if (rgi->flags & RGI_IFACE_DEFINED)
        {
            buf_printf(&out, " I=%lu", rgi->adapter_index);
        }
#else
        if (rgi->flags & RGI_IFACE_DEFINED)
        {
            FUNC2(&out, " IFACE=%s", rgi->iface);
        }
#endif
        if (rgi->flags & RGI_HWADDR_DEFINED)
        {
            FUNC2(&out, " HWADDR=%s", FUNC3(rgi->hwaddr, 6, 0, 1, ":", &gc));
        }
        FUNC6(msglevel, "%s", FUNC0(&out));
    }

    if (rgi6 && (rgi6->flags & RGI_ADDR_DEFINED))
    {
        struct buffer out = FUNC1(256, &gc);
        FUNC2(&out, "ROUTE6_GATEWAY");
        FUNC2(&out, " %s", FUNC7(rgi6->gateway.addr_ipv6, 0, &gc));
        if (rgi6->flags & RGI_ON_LINK)
        {
            FUNC2(&out, " ON_LINK");
        }
        if (rgi6->flags & RGI_NETMASK_DEFINED)
        {
            FUNC2(&out, "/%d", rgi6->gateway.netbits_ipv6);
        }
#ifdef _WIN32
        if (rgi6->flags & RGI_IFACE_DEFINED)
        {
            buf_printf(&out, " I=%lu", rgi6->adapter_index);
        }
#else
        if (rgi6->flags & RGI_IFACE_DEFINED)
        {
            FUNC2(&out, " IFACE=%s", rgi6->iface);
        }
#endif
        if (rgi6->flags & RGI_HWADDR_DEFINED)
        {
            FUNC2(&out, " HWADDR=%s", FUNC3(rgi6->hwaddr, 6, 0, 1, ":", &gc));
        }
        FUNC6(msglevel, "%s", FUNC0(&out));
    }
    FUNC4(&gc);
}