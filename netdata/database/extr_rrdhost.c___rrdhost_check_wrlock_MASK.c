#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hostname; int /*<<< orphan*/  rrdhost_rwlock; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRDHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,unsigned long const,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(RRDHOST *host, const char *file, const char *function, const unsigned long line) {
    FUNC0(D_RRDHOST, "Checking write lock on host '%s'", host->hostname);

    int ret = FUNC2(&host->rrdhost_rwlock);
    if(ret == 0)
        FUNC1("RRDHOST '%s' should be write-locked, but it is not, at function %s() at line %lu of file '%s'", host->hostname, function, line, file);
}