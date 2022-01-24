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
 int /*<<< orphan*/  D_RRDHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned long const,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rrd_rwlock ; 

void FUNC3(const char *file, const char *function, const unsigned long line) {
    FUNC0(D_RRDHOST, "Checking write lock on all RRDs");

    int ret = FUNC2(&rrd_rwlock);
    if(ret == 0)
        FUNC1("RRDs should be write-locked, but it are not, at function %s() at line %lu of file '%s'", function, line, file);
}