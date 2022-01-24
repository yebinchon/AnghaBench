#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* health_log_filename; int /*<<< orphan*/  hostname; scalar_t__ health_log_entries_written; } ;
typedef  TYPE_1__ RRDHOST ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,char*) ; 

inline void FUNC7(RRDHOST *host) {
    FUNC3(host);

    char filename[FILENAME_MAX + 1];
    FUNC6(filename, FILENAME_MAX, "%s.old", host->health_log_filename);
    FILE *fp = FUNC2(filename, "r");
    if(!fp)
        FUNC0("HEALTH [%s]: cannot open health file: %s", host->hostname, filename);
    else {
        FUNC5(host, fp, filename);
        FUNC1(fp);
    }

    host->health_log_entries_written = 0;
    fp = FUNC2(host->health_log_filename, "r");
    if(!fp)
        FUNC0("HEALTH [%s]: cannot open health file: %s", host->hostname, host->health_log_filename);
    else {
        FUNC5(host, fp, host->health_log_filename);
        FUNC1(fp);
    }

    FUNC4(host);
}