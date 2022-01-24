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
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  rrdset_rwlock; } ;
typedef  TYPE_1__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRD_CALLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,unsigned long const,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(RRDSET *st, const char *file, const char *function, const unsigned long line) {
    FUNC0(D_RRD_CALLS, "Checking read lock on chart '%s'", st->id);

    int ret = FUNC2(&st->rrdset_rwlock);
    if(ret == 0)
        FUNC1("RRDSET '%s' should be read-locked, but it is not, at function %s() at line %lu of file '%s'", st->id, function, line, file);
}