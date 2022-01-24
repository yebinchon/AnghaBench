#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rrd_update_every; } ;
struct TYPE_3__ {int usages_count; int persons_count; int machines_count; int urls_count; int persons_urls_count; int machines_urls_count; int persons_memory; int machines_memory; int urls_memory; int persons_urls_memory; int machines_urls_memory; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  NAME_VALUE ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRDSET_TYPE_STACKED ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 TYPE_2__* localhost ; 
 TYPE_1__ registry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(void) {
    if(!registry.enabled) return;

    static RRDSET *sts = NULL, *stc = NULL, *stm = NULL;

    if(FUNC5(!sts)) {
        sts = FUNC2(
                "netdata"
                , "registry_sessions"
                , NULL
                , "registry"
                , NULL
                , "NetData Registry Sessions"
                , "sessions"
                , "registry"
                , "stats"
                , 131000
                , localhost->rrd_update_every
                , RRDSET_TYPE_LINE
        );

        FUNC0(sts, "sessions",  NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else FUNC4(sts);

    FUNC1(sts, "sessions", registry.usages_count);
    FUNC3(sts);

    // ------------------------------------------------------------------------

    if(FUNC5(!stc)) {
        stc = FUNC2(
                "netdata"
                , "registry_entries"
                , NULL
                , "registry"
                , NULL
                , "NetData Registry Entries"
                , "entries"
                , "registry"
                , "stats"
                , 131100
                , localhost->rrd_update_every
                , RRDSET_TYPE_LINE
        );

        FUNC0(stc, "persons",        NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stc, "machines",       NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stc, "urls",           NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stc, "persons_urls",   NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stc, "machines_urls",  NULL,  1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else FUNC4(stc);

    FUNC1(stc, "persons",       registry.persons_count);
    FUNC1(stc, "machines",      registry.machines_count);
    FUNC1(stc, "urls",          registry.urls_count);
    FUNC1(stc, "persons_urls",  registry.persons_urls_count);
    FUNC1(stc, "machines_urls", registry.machines_urls_count);
    FUNC3(stc);

    // ------------------------------------------------------------------------

    if(FUNC5(!stm)) {
        stm = FUNC2(
                "netdata"
                , "registry_mem"
                , NULL
                , "registry"
                , NULL
                , "NetData Registry Memory"
                , "KiB"
                , "registry"
                , "stats"
                , 131300
                , localhost->rrd_update_every
                , RRDSET_TYPE_STACKED
        );

        FUNC0(stm, "persons",        NULL,  1, 1024, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stm, "machines",       NULL,  1, 1024, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stm, "urls",           NULL,  1, 1024, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stm, "persons_urls",   NULL,  1, 1024, RRD_ALGORITHM_ABSOLUTE);
        FUNC0(stm, "machines_urls",  NULL,  1, 1024, RRD_ALGORITHM_ABSOLUTE);
    }
    else FUNC4(stm);

    FUNC1(stm, "persons",       registry.persons_memory + registry.persons_count * sizeof(NAME_VALUE) + sizeof(DICTIONARY));
    FUNC1(stm, "machines",      registry.machines_memory + registry.machines_count * sizeof(NAME_VALUE) + sizeof(DICTIONARY));
    FUNC1(stm, "urls",          registry.urls_memory);
    FUNC1(stm, "persons_urls",  registry.persons_urls_memory);
    FUNC1(stm, "machines_urls", registry.machines_urls_memory + registry.machines_count * sizeof(DICTIONARY) + registry.machines_urls_count * sizeof(NAME_VALUE));
    FUNC3(stm);
}