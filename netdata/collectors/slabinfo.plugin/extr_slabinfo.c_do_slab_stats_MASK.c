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
struct slabinfo {char* name; int obj_filling; int /*<<< orphan*/  mem_waste; struct slabinfo* next; int /*<<< orphan*/  mem_usage; } ;

/* Variables and functions */
 char* CHART_FAMILY ; 
 int CHART_PRIO ; 
 char* CHART_TYPE ; 
 char* PLUGIN_SLABINFO_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct slabinfo* FUNC1 () ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

unsigned int FUNC4(int update_every) {

    static unsigned int loops = 0;
    struct slabinfo *sactive = NULL, *s = NULL;

    // Main processing loop
    while (running) {

        sactive = FUNC1();

        // Init Charts
        if (FUNC3(loops == 0)) {
            // Memory Usage
            FUNC0("CHART %s.%s '' 'Memory Usage' 'B' '%s' '' line %d %d %s\n"
                , CHART_TYPE
                , "slabmemory"
                , CHART_FAMILY
                , CHART_PRIO
                , update_every
                , PLUGIN_SLABINFO_NAME
            );
            for (s = sactive; s; s = s->next) {
                FUNC0("DIMENSION %s '' absolute 1 1\n", s->name);
            }

            // Slab active usage (filling)
            FUNC0("CHART %s.%s '' 'Object Filling' '%%' '%s' '' line %d %d %s\n"
                , CHART_TYPE
                , "slabfilling"
                , CHART_FAMILY
                , CHART_PRIO + 1
                , update_every
                , PLUGIN_SLABINFO_NAME
            );
            for (s = sactive; s; s = s->next) {
                FUNC0("DIMENSION %s '' absolute 1 1\n", s->name);
            }

            // Memory waste
            FUNC0("CHART %s.%s '' 'Memory waste' 'B' '%s' '' line %d %d %s\n"
                , CHART_TYPE
                , "slabwaste"
                , CHART_FAMILY
                , CHART_PRIO + 2
                , update_every
                , PLUGIN_SLABINFO_NAME
            );
            for (s = sactive; s; s = s->next) {
                FUNC0("DIMENSION %s '' absolute 1 1\n", s->name);
            }
        }


        //
        // Memory usage
        //
        FUNC0("BEGIN %s.%s\n"
            , CHART_TYPE
            , "slabmemory"
        );
        for (s = sactive; s; s = s->next) {
            FUNC0("SET %s = %lu\n"
                , s->name
                , s->mem_usage
            );
        }
        FUNC0("END\n");

        //
        // Slab active usage
        //
        FUNC0("BEGIN %s.%s\n"
            , CHART_TYPE
            , "slabfilling"
        );
        for (s = sactive; s; s = s->next) {
            FUNC0("SET %s = %u\n"
                , s->name
                , s->obj_filling
            );
        }
        FUNC0("END\n");

        //
        // Memory waste
        //
        FUNC0("BEGIN %s.%s\n"
            , CHART_TYPE
            , "slabwaste"
        );
        for (s = sactive; s; s = s->next) {
            FUNC0("SET %s = %lu\n"
                , s->name
                , s->mem_waste
            );
        }
        FUNC0("END\n");


        loops++;

        FUNC2(update_every);
    }

    return loops;
}