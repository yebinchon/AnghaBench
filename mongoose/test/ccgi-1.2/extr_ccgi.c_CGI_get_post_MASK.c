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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

CGI_varlist *
FUNC8(CGI_varlist *v, const char *template) {
    const char *env;
    char *buf;
    int len;

    if ((env = FUNC4("CONTENT_TYPE")) != 0 &&
        FUNC7(env, "application/x-www-form-urlencoded", 33) == 0 &&
        (env = FUNC4("CONTENT_LENGTH")) != 0 &&
        (len = FUNC1(env)) > 0)
    {
        buf = (char *) FUNC5(len + 1);
        if (FUNC2(buf, 1, len, stdin) == len) {
            buf[len] = 0;
            v = FUNC0(v, buf);
        }
        FUNC3(buf);
    }
    else {
        v = FUNC6(v, template);
    }
    return v;
}