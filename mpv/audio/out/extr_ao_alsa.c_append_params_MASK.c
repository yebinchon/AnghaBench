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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (void*,char*,...) ; 
 char* FUNC4 (void*,char const*) ; 

__attribute__((used)) static char *FUNC5(void *ta_parent, const char *device, const char *p)
{
    if (!p || !p[0])
        return FUNC4(ta_parent, device);

    int len = FUNC2(device);
    char *end = FUNC1(device, ':');
    if (!end) {
        /* no existing parameters: add it behind device name */
        return FUNC3(ta_parent, "%s:%s", device, p);
    } else if (end[1] == '\0') {
        /* ":" but no parameters */
        return FUNC3(ta_parent, "%s%s", device, p);
    } else if (end[1] == '{' && device[len - 1] == '}') {
        /* parameters in config syntax: add it inside the { } block */
        return FUNC3(ta_parent, "%.*s %s}", len - 1, device, p);
    } else {
        /* a simple list of parameters: add it at the end of the list */
        return FUNC3(ta_parent, "%s,%s", device, p);
    }
    FUNC0();
}