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
typedef  int /*<<< orphan*/  CGI_varlist ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

CGI_varlist *
FUNC5(CGI_varlist *v, const char *query) {
    char *buf;
    const char *name, *value;
    int i, k, L, R, done;

    if (query == 0) {
        return v;
    }
    buf = (char *) FUNC3(FUNC4(query) + 1);
    name = value = 0;
    for (i = k = done = 0; done == 0; i++) {
        switch (query[i]) {

        case '=':
            if (name != 0) {
                break;  /* treat extraneous '=' as data */
            }
            if (name == 0 && k > 0) {
                name = buf;
                buf[k++] = 0;
                value = buf + k;
            }
            continue;

        case 0:
            done = 1;  /* fall through */

        case '&':
            buf[k] = 0;
            if (name == 0 && k > 0) {
                name = buf;
                value = buf + k;
            }
            if (name != 0) {
                v = FUNC0(v, name, value);
            }
            k = 0;
            name = value = 0;
            continue;

        case '+':
            buf[k++] = ' ';
            continue;

        case '%':
            if ((L = FUNC2(query[i + 1])) >= 0 &&
                (R = FUNC2(query[i + 2])) >= 0)
            {
                buf[k++] = (L << 4) + R;
                i += 2;
                continue;
            }
            break;  /* treat extraneous '%' as data */
        }
        buf[k++] = query[i];
    }
    FUNC1(buf);
    return v;
}