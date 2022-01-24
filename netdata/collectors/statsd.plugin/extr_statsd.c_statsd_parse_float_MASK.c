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
typedef  int /*<<< orphan*/  LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline LONG_DOUBLE FUNC4(const char *v, LONG_DOUBLE def) {
    LONG_DOUBLE value;

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