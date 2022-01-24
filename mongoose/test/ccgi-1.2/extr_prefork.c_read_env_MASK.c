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
 int FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static char **
FUNC5(void) {
    char **env;
    char *buf, *p;
    int i, k, len;

    /* read length of environment data, eg, "175:" */

    for (len = 0; FUNC3(k = FUNC2(stdin)); ) {
        len = len * 10 + k - '0';
    }
    if (k != ':' || len < 4) {
        return 0;
    }

    /* read the environment strings */

    buf = (char *) FUNC4(len);
    if (FUNC0(buf, 1, len, stdin) != len || FUNC2(stdin) != ',') {
        FUNC1(buf);
        return 0;
    }

    /* replace null between each name and value with '=' */

    for (i = k = 0; i < len; i++) {
        if (buf[i] == 0 && (++k & 1)) {
            buf[i] = '=';
        }
    }

    /* build environment array */

    k = k / 2 + 1;
    env = (char **) FUNC4(k * sizeof(*env));
    p = buf;
    for (i = k = 0; i < len; i++) {
        if (buf[i] == 0) {
            env[k++] = p;
            p = buf + i + 1;
        }
    }
    env[k] = 0;
    return env;
}