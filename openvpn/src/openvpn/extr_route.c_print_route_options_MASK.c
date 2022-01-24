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
struct route_option_list {int flags; struct route_option* routes; } ;
struct route_option {struct route_option* next; } ;

/* Variables and functions */
 int RG_ENABLE ; 
 int RG_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct route_option*,int) ; 

void
FUNC2(const struct route_option_list *rol,
                    int level)
{
    struct route_option *ro;
    if (rol->flags & RG_ENABLE)
    {
        FUNC0(level, "  [redirect_default_gateway local=%d]",
            (rol->flags & RG_LOCAL) != 0);
    }
    for (ro = rol->routes; ro; ro = ro->next)
    {
        FUNC1(ro, level);
    }
}