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

/* Variables and functions */
 char const* lastsesion_statevalue ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

void
FUNC1(struct env_set *es, const char *name, const char *value)
{
    if (FUNC0(name, "session_state"))
    {
        lastsesion_statevalue = value;
    }
}