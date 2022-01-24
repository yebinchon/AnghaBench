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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static int FUNC3(void)
{
    int backlog = SOMAXCONN;

#ifdef __linux__
    FILE *somaxconn;

    somaxconn = FUNC1("/proc/sys/net/core/somaxconn", "re");
    if (somaxconn) {
        int tmp;
        if (FUNC2(somaxconn, "%d", &tmp) == 1)
            backlog = tmp;
        FUNC0(somaxconn);
    }
#endif

    return backlog;
}