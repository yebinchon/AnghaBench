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
struct TYPE_3__ {scalar_t__ rrd_memory_mode; int /*<<< orphan*/  cache_dir; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 scalar_t__ RRD_MEMORY_MODE_MAP ; 
 scalar_t__ RRD_MEMORY_MODE_SAVE ; 
 char* FUNC0 (char const*,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

char *FUNC5(RRDHOST *host, const char *id, const char *config_section) {
    char *ret = NULL;

    char b[FILENAME_MAX + 1];
    char n[FILENAME_MAX + 1];
    FUNC3(b, id, FILENAME_MAX);

    FUNC4(n, FILENAME_MAX, "%s/%s", host->cache_dir, b);
    ret = FUNC0(config_section, "cache directory", n);

    if(host->rrd_memory_mode == RRD_MEMORY_MODE_MAP || host->rrd_memory_mode == RRD_MEMORY_MODE_SAVE) {
        int r = FUNC2(ret, 0775);
        if(r != 0 && errno != EEXIST)
            FUNC1("Cannot create directory '%s'", ret);
    }

    return ret;
}