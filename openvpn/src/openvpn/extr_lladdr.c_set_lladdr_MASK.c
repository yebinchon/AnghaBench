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
struct env_set {int dummy; } ;
struct argv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCONFIG_PATH ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct argv*) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*) ; 
 int /*<<< orphan*/  iproute_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct argv*,struct env_set const*,int /*<<< orphan*/ ,char*) ; 

int
FUNC6(const char *ifname, const char *lladdr,
           const struct env_set *es)
{
    struct argv argv = FUNC1();
    int r;

    if (!ifname || !lladdr)
    {
        return -1;
    }

#if defined(TARGET_LINUX)
#ifdef ENABLE_IPROUTE
    argv_printf(&argv,
                "%s link set addr %s dev %s",
                iproute_path, lladdr, ifname);
#else
    argv_printf(&argv,
                "%s %s hw ether %s",
                IFCONFIG_PATH,
                ifname, lladdr);
#endif
#elif defined(TARGET_SOLARIS)
    argv_printf(&argv,
                "%s %s ether %s",
                IFCONFIG_PATH,
                ifname, lladdr);
#elif defined(TARGET_OPENBSD)
    argv_printf(&argv,
                "%s %s lladdr %s",
                IFCONFIG_PATH,
                ifname, lladdr);
#elif defined(TARGET_DARWIN)
    argv_printf(&argv,
                "%s %s lladdr %s",
                IFCONFIG_PATH,
                ifname, lladdr);
#elif defined(TARGET_FREEBSD)
    argv_printf(&argv,
                "%s %s ether %s",
                IFCONFIG_PATH,
                ifname, lladdr);
#else  /* if defined(TARGET_LINUX) */
    FUNC4(M_WARN, "Sorry, but I don't know how to configure link layer addresses on this operating system.");
    return -1;
#endif /* if defined(TARGET_LINUX) */

    FUNC0(M_INFO, &argv);
    r = FUNC5(&argv, es, M_WARN, "ERROR: Unable to set link layer address.");
    if (r)
    {
        FUNC4(M_INFO, "TUN/TAP link layer address set to %s", lladdr);
    }

    FUNC3(&argv);
    return r;
}