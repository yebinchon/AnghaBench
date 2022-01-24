#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t health_log_entries_written; char* health_log_filename; int /*<<< orphan*/ * health_log_fp; int /*<<< orphan*/  hostname; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_HEALTH ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (char*) ; 

static inline void FUNC10(RRDHOST *host) {
    static size_t rotate_every = 0;

    if(FUNC8(rotate_every == 0)) {
        rotate_every = (size_t)FUNC0(CONFIG_SECTION_HEALTH, "rotate log every lines", 2000);
        if(rotate_every < 100) rotate_every = 100;
    }

    if(FUNC8(host->health_log_entries_written > rotate_every)) {
        FUNC4(host);

        char old_filename[FILENAME_MAX + 1];
        FUNC7(old_filename, FILENAME_MAX, "%s.old", host->health_log_filename);

        if(FUNC9(old_filename) == -1 && errno != ENOENT)
            FUNC1("HEALTH [%s]: cannot remove old alarms log file '%s'", host->hostname, old_filename);

        if(FUNC6(host->health_log_filename, old_filename) == -1 && errno != ENOENT)
            FUNC1("HEALTH [%s]: cannot move file '%s' to '%s'.", host->hostname, host->health_log_filename, old_filename);

        if(FUNC9(host->health_log_filename) == -1 && errno != ENOENT)
            FUNC1("HEALTH [%s]: cannot remove old alarms log file '%s'", host->hostname, host->health_log_filename);

        // open it with truncate
        host->health_log_fp = FUNC3(host->health_log_filename, "w");

        if(host->health_log_fp)
            FUNC2(host->health_log_fp);
        else
            FUNC1("HEALTH [%s]: cannot truncate health log '%s'", host->hostname, host->health_log_filename);

        host->health_log_fp = NULL;

        host->health_log_entries_written = 0;
        FUNC5(host);
    }
}