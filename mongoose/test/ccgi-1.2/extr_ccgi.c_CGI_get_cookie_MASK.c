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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 char* FUNC4 (char*,char**) ; 
 char* FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

CGI_varlist *
FUNC7(CGI_varlist *v) {
    const char *env;
    char *buf, *p, *cookie[2];

    if ((env = FUNC2("HTTP_COOKIE")) == 0) {
        return v;
    }
    buf = (char *) FUNC3(FUNC6(env) + 1);
    p = FUNC5(buf, env);
    while ((p = FUNC4(p, cookie)) != 0) {
        v = FUNC0(v, cookie[0], cookie[1]);
    }
    FUNC1(buf);
    return v;
}