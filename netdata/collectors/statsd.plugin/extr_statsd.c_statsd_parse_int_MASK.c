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
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 long long FUNC2 (char const*,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline long long FUNC4(const char *v, long long def) {
    long long value;

    if(FUNC1(v && *v)) {
        char *e = NULL;
        value = FUNC2(v, &e);
        if(FUNC3(e && *e))
            FUNC0("STATSD: excess data '%s' after value '%s'", e, v);
    }
    else
        value = def;

    return value;
}