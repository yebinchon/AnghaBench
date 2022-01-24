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
struct event_set {int dummy; } ;

/* Variables and functions */
 unsigned int EVENT_METHOD_FAST ; 
 struct event_set* FUNC0 (int*,unsigned int) ; 
 struct event_set* FUNC1 (int*,unsigned int) ; 

struct event_set *
FUNC2(int *maxevents, unsigned int flags)
{
    if (flags & EVENT_METHOD_FAST)
    {
        return FUNC1(maxevents, flags);
    }
    else
    {
        return FUNC0(maxevents, flags);
    }
}