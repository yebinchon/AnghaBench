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

/* Variables and functions */
 int TOP_NET30 ; 
 int TOP_P2P ; 
 int TOP_SUBNET ; 
 int TOP_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int const,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int
FUNC2(const char *str, const int msglevel)
{
    if (FUNC1(str, "net30"))
    {
        return TOP_NET30;
    }
    else if (FUNC1(str, "p2p"))
    {
        return TOP_P2P;
    }
    else if (FUNC1(str, "subnet"))
    {
        return TOP_SUBNET;
    }
    else
    {
        FUNC0(msglevel, "--topology must be net30, p2p, or subnet");
        return TOP_UNDEF;
    }
}