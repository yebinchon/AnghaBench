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
struct tuntap {scalar_t__ type; scalar_t__ topology; int local; int remote_netmask; scalar_t__ did_ifconfig_setup; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 scalar_t__ DEV_TYPE_TAP ; 
 scalar_t__ DEV_TYPE_TUN ; 
 scalar_t__ TOP_SUBNET ; 
 struct buffer FUNC1 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,...) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,struct gc_arena*) ; 

const char *
FUNC4(const struct tuntap *tt, bool remote, bool disable, struct gc_arena *gc)
{
    struct buffer out = FUNC1(256, gc);
    if (tt->did_ifconfig_setup && !disable)
    {
        if (tt->type == DEV_TYPE_TAP || (tt->type == DEV_TYPE_TUN && tt->topology == TOP_SUBNET))
        {
            FUNC2(&out, "%s %s",
                       FUNC3(tt->local & tt->remote_netmask, 0, gc),
                       FUNC3(tt->remote_netmask, 0, gc));
        }
        else if (tt->type == DEV_TYPE_TUN)
        {
            const char *l, *r;
            if (remote)
            {
                r = FUNC3(tt->local, 0, gc);
                l = FUNC3(tt->remote_netmask, 0, gc);
            }
            else
            {
                l = FUNC3(tt->local, 0, gc);
                r = FUNC3(tt->remote_netmask, 0, gc);
            }
            FUNC2(&out, "%s %s", r, l);
        }
        else
        {
            FUNC2(&out, "[undef]");
        }
    }
    return FUNC0(&out);
}