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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char**) ; 

int FUNC4(int argc, char **argv)
{
    int naptime = 0;
    FUNC1(argc > 2);

    naptime = FUNC2(argv[1]);
    FUNC1(naptime > 0 && naptime < 1800);

    FUNC0(naptime);

    return FUNC3(argv+2);
}