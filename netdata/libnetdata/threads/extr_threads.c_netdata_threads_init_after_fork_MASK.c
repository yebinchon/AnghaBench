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
 int /*<<< orphan*/  D_SYSTEM ; 
 scalar_t__ attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t default_stacksize ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 
 int FUNC2 (scalar_t__,size_t) ; 
 size_t wanted_stacksize ; 

void FUNC3(size_t stacksize) {
    wanted_stacksize = stacksize;
    int i;

    // ------------------------------------------------------------------------
    // set default pthread stack size

    if(attr && default_stacksize < wanted_stacksize && wanted_stacksize > 0) {
        i = FUNC2(attr, wanted_stacksize);
        if(i != 0)
            FUNC1("pthread_attr_setstacksize() to %zu bytes, failed with code %d.", wanted_stacksize, i);
        else
            FUNC0(D_SYSTEM, "Successfully set pthread stacksize to %zu bytes", wanted_stacksize);
    }
}