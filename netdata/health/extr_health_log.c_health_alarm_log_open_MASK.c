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
struct TYPE_3__ {char* health_log_filename; int /*<<< orphan*/  hostname; scalar_t__ health_log_fp; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

inline int FUNC4(RRDHOST *host) {
    if(host->health_log_fp)
        FUNC1(host->health_log_fp);

    host->health_log_fp = FUNC2(host->health_log_filename, "a");

    if(host->health_log_fp) {
        if (FUNC3(host->health_log_fp, NULL, _IOLBF, 0) != 0)
            FUNC0("HEALTH [%s]: cannot set line buffering on health log file '%s'.", host->hostname, host->health_log_filename);
        return 0;
    }

    FUNC0("HEALTH [%s]: cannot open health log file '%s'. Health data will be lost in case of netdata or server crash.", host->hostname, host->health_log_filename);
    return -1;
}