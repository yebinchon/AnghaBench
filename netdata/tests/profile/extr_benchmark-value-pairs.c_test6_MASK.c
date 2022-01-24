#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  ARL_BASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arl_strtoull ; 
 TYPE_1__* pairs ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * values6 ; 

void FUNC5() {
    static ARL_BASE *base = NULL;

    if(FUNC4(!base)) {
        base = FUNC2("test6", arl_strtoull, 60);
        FUNC3(base, "cache",       NULL, &values6[0]);
        FUNC3(base, "rss",         NULL, &values6[1]);
        FUNC3(base, "rss_huge",    NULL, &values6[2]);
        FUNC3(base, "mapped_file", NULL, &values6[3]);
        FUNC3(base, "writeback",   NULL, &values6[4]);
        FUNC3(base, "dirty",       NULL, &values6[5]);
        FUNC3(base, "swap",        NULL, &values6[6]);
        FUNC3(base, "pgpgin",      NULL, &values6[7]);
        FUNC3(base, "pgpgout",     NULL, &values6[8]);
        FUNC3(base, "pgfault",     NULL, &values6[9]);
        FUNC3(base, "pgmajfault",  NULL, &values6[10]);
    }

    FUNC0(base);

    int i;
    for(i = 0; pairs[i].name ; i++)
        if(FUNC1(base, pairs[i].name, pairs[i].value)) break;
}