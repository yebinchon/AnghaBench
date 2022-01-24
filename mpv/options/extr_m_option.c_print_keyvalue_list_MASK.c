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
 char** FUNC0 (void const*) ; 
 char* FUNC1 (char*,char*,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static char *FUNC4(const m_option_t *opt, const void *src)
{
    char **lst = FUNC0(src);
    char *ret = FUNC2(NULL, "");
    for (int n = 0; lst && lst[n] && lst[n + 1]; n += 2) {
        if (ret[0])
            ret = FUNC3(ret, ",");
        ret = FUNC1(ret, "%s=%s", lst[n], lst[n + 1]);
    }
    return ret;
}