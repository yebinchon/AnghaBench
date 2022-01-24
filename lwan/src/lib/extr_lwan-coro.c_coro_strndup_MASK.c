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
struct coro {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (struct coro*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t const) ; 
 int FUNC3 (char const*,size_t) ; 

char *FUNC4(struct coro *coro, const char *str, size_t max_len)
{
    const size_t len = FUNC3(str, max_len) + 1;
    char *dup = FUNC1(coro, len);

    if (FUNC0(dup)) {
        FUNC2(dup, str, len);
        dup[len - 1] = '\0';
    }
    return dup;
}