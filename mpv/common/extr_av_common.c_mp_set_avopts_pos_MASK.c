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
struct mp_log {int dummy; } ;
typedef  int /*<<< orphan*/  errstr ;

/* Variables and functions */
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int FUNC0 (void*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,char**) ; 

int FUNC4(struct mp_log *log, void *avobj, void *posargs, char **kv)
{
    int success = 0;
    for (int n = 0; kv && kv[n * 2]; n++) {
        char *k = kv[n * 2 + 0];
        char *v = kv[n * 2 + 1];
        FUNC3(posargs, &k);
        int r = FUNC0(avobj, k, v, AV_OPT_SEARCH_CHILDREN);
        if (r == AVERROR_OPTION_NOT_FOUND) {
            FUNC2(log, "AVOption '%s' not found.\n", k);
            success = -1;
        } else if (r < 0) {
            char errstr[80];
            FUNC1(r, errstr, sizeof(errstr));
            FUNC2(log, "Could not set AVOption %s='%s' (%s)\n", k, v, errstr);
            success = -1;
        }
    }
    return success;
}