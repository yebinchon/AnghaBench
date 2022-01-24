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
 size_t ENV_VAR_NAME_LEN_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 

__attribute__((used)) static __attribute__((noinline)) const char *FUNC4(const char *key, size_t len)
{
    if (FUNC0(len > ENV_VAR_NAME_LEN_MAX)) {
        FUNC1("Variable name exceeds %d bytes", ENV_VAR_NAME_LEN_MAX);
        return NULL;
    }

    return FUNC2(FUNC3(key, len));
}