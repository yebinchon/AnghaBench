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
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(const m_option_t *opt, const void *src)
{
    char **lst = NULL;
    char *ret = NULL;

    if (!(src && FUNC0(src)))
        return FUNC1(NULL, "");
    lst = FUNC0(src);

    for (int i = 0; lst[i]; i++) {
        if (ret)
            ret = FUNC2(ret, ",");
        ret = FUNC2(ret, lst[i]);
    }
    return ret;
}