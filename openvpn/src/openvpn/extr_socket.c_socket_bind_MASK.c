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
typedef  int /*<<< orphan*/  v6only ;
struct gc_arena {int dummy; } ;
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_addrlen; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int M_ERRNO ; 
 int M_FATAL ; 
 int /*<<< orphan*/  M_INFO ; 
 int M_NONFATAL ; 
 int /*<<< orphan*/  PS_SHOW_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct gc_arena*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

void
FUNC8(socket_descriptor_t sd,
            struct addrinfo *local,
            int ai_family,
            const char *prefix,
            bool ipv6only)
{
    struct gc_arena gc = FUNC4();

    /* FIXME (schwabe)
     * getaddrinfo for the bind address might return multiple AF_INET/AF_INET6
     * entries for the requested protocol.
     * For example if an address has multiple A records
     * What is the correct way to deal with it?
     */

    struct addrinfo *cur;

    FUNC0(local);


    /* find the first addrinfo with correct ai_family */
    for (cur = local; cur; cur = cur->ai_next)
    {
        if (cur->ai_family == ai_family)
        {
            break;
        }
    }
    if (!cur)
    {
        FUNC5(M_FATAL, "%s: Socket bind failed: Addr to bind has no %s record",
            prefix, FUNC1(ai_family));
    }

    if (ai_family == AF_INET6)
    {
        int v6only = ipv6only ? 1 : 0;  /* setsockopt must have an "int" */

        FUNC5(M_INFO, "setsockopt(IPV6_V6ONLY=%d)", v6only);
        if (FUNC7(sd, IPPROTO_IPV6, IPV6_V6ONLY, (void *) &v6only, sizeof(v6only)))
        {
            FUNC5(M_NONFATAL|M_ERRNO, "Setting IPV6_V6ONLY=%d failed", v6only);
        }
    }
    if (FUNC2(sd, cur->ai_addr, cur->ai_addrlen))
    {
        FUNC5(M_FATAL | M_ERRNO, "%s: Socket bind failed on local address %s",
            prefix,
            FUNC6(local->ai_addr, ":", PS_SHOW_PORT, &gc));
    }
    FUNC3(&gc);
}