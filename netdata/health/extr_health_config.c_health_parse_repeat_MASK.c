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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char const*,char*,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static inline int FUNC4(
        size_t line,
        const char *file,
        char *string,
        uint32_t *warn_repeat_every,
        uint32_t *crit_repeat_every
) {

    char *s = string;
    while(*s) {
        char *key = s;

        while(*s && !FUNC2(*s)) s++;
        while(*s && FUNC2(*s)) *s++ = '\0';

        if(!*key) break;

        char *value = s;
        while(*s && !FUNC2(*s)) s++;
        while(*s && FUNC2(*s)) *s++ = '\0';

        if(!FUNC3(key, "off")) {
            *warn_repeat_every = 0;
            *crit_repeat_every = 0;
            return 1;
        }
        if(!FUNC3(key, "warning")) {
            if (!FUNC0(value, (int*)warn_repeat_every)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                      line, file, value, key);
            }
        }
        else if(!FUNC3(key, "critical")) {
            if (!FUNC0(value, (int*)crit_repeat_every)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                      line, file, value, key);
            }
        }
    }

    return 1;
}