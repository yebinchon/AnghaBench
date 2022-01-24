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
 int DEV_TYPE_NULL ; 
 int DEV_TYPE_TAP ; 
 int DEV_TYPE_TUN ; 
 int DEV_TYPE_UNDEF ; 
 scalar_t__ FUNC0 (char const*,char const*,char*) ; 

int
FUNC1(const char *dev, const char *dev_type)
{
    if (FUNC0(dev, dev_type, "tun"))
    {
        return DEV_TYPE_TUN;
    }
    else if (FUNC0(dev, dev_type, "tap"))
    {
        return DEV_TYPE_TAP;
    }
    else if (FUNC0(dev, dev_type, "null"))
    {
        return DEV_TYPE_NULL;
    }
    else
    {
        return DEV_TYPE_UNDEF;
    }
}