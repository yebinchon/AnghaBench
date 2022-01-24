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
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int*) ; 
 char* FUNC1 (char*,char*,char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *FUNC3(const m_option_t *opt, const void *val)
{
    int value = *(int *)val;
    char *res = FUNC2(NULL, "");
    while (1) {
        const char *flag = FUNC0(opt, &value);
        if (!flag)
            break;

        res = FUNC1(res, "%s%s", res[0] ? "+" : "", flag);
    }
    return res;
}