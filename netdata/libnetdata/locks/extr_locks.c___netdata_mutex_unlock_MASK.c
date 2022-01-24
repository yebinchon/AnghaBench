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
typedef  int /*<<< orphan*/  netdata_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(netdata_mutex_t *mutex) {
    int ret = FUNC2(mutex);
    if(FUNC3(ret != 0))
        FUNC0("MUTEX_LOCK: failed to unlock (code %d).", ret);
    else
        FUNC1();

    return ret;
}