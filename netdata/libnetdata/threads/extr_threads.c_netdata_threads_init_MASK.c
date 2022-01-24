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
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_OPTIONS ; 
 int /*<<< orphan*/  attr ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t default_stacksize ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

size_t FUNC5(void) {
    int i;

    // --------------------------------------------------------------------
    // get the required stack size of the threads of netdata

    attr = FUNC0(1, sizeof(pthread_attr_t));
    i = FUNC4(attr);
    if(i != 0)
        FUNC2("pthread_attr_init() failed with code %d.", i);

    i = FUNC3(attr, &default_stacksize);
    if(i != 0)
        FUNC2("pthread_attr_getstacksize() failed with code %d.", i);
    else
        FUNC1(D_OPTIONS, "initial pthread stack size is %zu bytes", default_stacksize);

    return default_stacksize;
}