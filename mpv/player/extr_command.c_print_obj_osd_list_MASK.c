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
struct m_obj_settings {int /*<<< orphan*/  enabled; scalar_t__* attribs; scalar_t__ name; } ;

/* Variables and functions */
 char* FUNC0 (char*,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(struct m_obj_settings *list)
{
    char *res = NULL;
    for (int n = 0; list && list[n].name; n++) {
        res = FUNC0(res, "%s [", list[n].name);
        for (int i = 0; list[n].attribs && list[n].attribs[i]; i += 2) {
            res = FUNC0(res, "%s%s=%s", i > 0 ? " " : "",
                                         list[n].attribs[i],
                                         list[n].attribs[i + 1]);
        }
        res = FUNC0(res, "]");
        if (!list[n].enabled)
            res = FUNC2(res, " (disabled)");
        res = FUNC2(res, "\n");
    }
    if (!res)
        res = FUNC1(NULL, "(empty)");
    return res;
}