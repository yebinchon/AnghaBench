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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

int FUNC4() {

    struct strdupz_path_subpath_checks {
        const char *path;
        const char *subpath;
        const char *result;
    } checks[] = {
            { "",                "",            "."                     },
            { "/",               "",            "/"                     },
            { "/etc/netdata",    "",            "/etc/netdata"          },
            { "/etc/netdata///", "",            "/etc/netdata"          },
            { "/etc/netdata///", "health.d",    "/etc/netdata/health.d" },
            { "/etc/netdata///", "///health.d", "/etc/netdata/health.d" },
            { "/etc/netdata",    "///health.d", "/etc/netdata/health.d" },
            { "",                "///health.d", "./health.d"            },
            { "/",               "///health.d", "/health.d"             },

            // terminator
            { NULL, NULL, NULL }
    };

    size_t i;
    for(i = 0; checks[i].result ; i++) {
        char *s = FUNC3(checks[i].path, checks[i].subpath);
        FUNC0(stderr, "strdupz_path_subpath(\"%s\", \"%s\") = \"%s\": ", checks[i].path, checks[i].subpath, s);
        if(!s || FUNC2(s, checks[i].result) != 0) {
            FUNC1(s);
            FUNC0(stderr, "FAILED\n");
            return 1;
        }
        else {
            FUNC1(s);
            FUNC0(stderr, "OK\n");
        }
    }

    return 0;
}