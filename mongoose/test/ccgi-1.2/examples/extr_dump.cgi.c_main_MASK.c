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
typedef  scalar_t__ CGI_value ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7(int argc, char **argv, char **env) {
    CGI_varlist *vl;
    const char *name;
    CGI_value  *value;
    int i;

    FUNC5("Content-type: text/plain\r\n\r\n", stdout);
    FUNC5("Environment:\r\n", stdout);
    for (i = 0; env[i] != 0; i++) {
        FUNC5(env[i], stdout);
        FUNC5("\r\n", stdout);
    }

    if ((vl = FUNC2("/tmp/cgi-upload-XXXXXX")) == 0) {
        FUNC5("CGI_get_all() failed\r\n", stdout);
        return 0;
    }
    FUNC5("\r\nCGI Variables:\r\n", stdout);

    for (name = FUNC0(vl); name != 0;
        name = FUNC4(vl))
    {
        value = FUNC3(vl, 0);
        for (i = 0; value[i] != 0; i++) {
            FUNC6("%s [%d] >>%s<<\r\n", name, i, value[i]);
        }
    }
    FUNC1(vl);
    return 0;
}