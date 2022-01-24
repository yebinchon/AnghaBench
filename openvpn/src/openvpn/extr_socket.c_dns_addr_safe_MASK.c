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
 int CC_ALNUM ; 
 int CC_DASH ; 
 int CC_DOT ; 
 scalar_t__ FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static bool
FUNC2(const char *addr)
{
    if (addr)
    {
        const size_t len = FUNC1(addr);
        return len > 0 && len <= 255 && FUNC0(addr, CC_ALNUM|CC_DASH|CC_DOT, 0);
    }
    else
    {
        return false;
    }
}