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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static bool FUNC6(char **str, size_t at, const char *append,
                              size_t append_len)
{
    FUNC0(FUNC4(*str) >= at);

    if (!*str && !append)
        return true; // stays NULL, but not an OOM condition

    size_t real_len = append ? FUNC2(append, append_len) : 0;
    if (append_len > real_len)
        append_len = real_len;

    if (FUNC4(*str) < at + append_len + 1) {
        char *t = FUNC5(NULL, *str, at + append_len + 1);
        if (!t)
            return false;
        *str = t;
    }

    if (append_len)
        FUNC1(*str + at, append, append_len);

    (*str)[at + append_len] = '\0';

    FUNC3(*str);

    return true;
}