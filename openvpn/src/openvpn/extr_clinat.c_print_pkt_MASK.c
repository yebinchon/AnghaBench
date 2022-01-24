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
struct openvpn_iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int const CN_INCOMING ; 
 int const CN_OUTGOING ; 
 int /*<<< orphan*/  IA_NET_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int const,char*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gc_arena*) ; 

__attribute__((used)) static void
FUNC4(struct openvpn_iphdr *iph, const char *prefix, const int direction, const int msglevel)
{
    struct gc_arena gc = FUNC1();

    char *dirstr = "???";
    if (direction == CN_OUTGOING)
    {
        dirstr = "OUT";
    }
    else if (direction == CN_INCOMING)
    {
        dirstr = "IN";
    }

    FUNC2(msglevel, "** CNAT %s %s %s -> %s",
        dirstr,
        prefix,
        FUNC3(iph->saddr, IA_NET_ORDER, &gc),
        FUNC3(iph->daddr, IA_NET_ORDER, &gc));

    FUNC0(&gc);
}