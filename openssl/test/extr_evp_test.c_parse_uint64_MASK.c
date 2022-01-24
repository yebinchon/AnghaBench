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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int UINT64_MAX ; 
 char const FUNC3 (unsigned char) ; 

__attribute__((used)) static int FUNC4(const char *value, uint64_t *pr)
{
    const char *p = value;

    if (!FUNC2(*p)) {
        FUNC1("Invalid empty integer value");
        return -1;
    }
    for (*pr = 0; *p; ) {
        if (*pr > UINT64_MAX / 10) {
            FUNC0("Integer overflow in string %s", value);
            return -1;
        }
        *pr *= 10;
        if (!FUNC2(FUNC3((unsigned char)*p))) {
            FUNC0("Invalid character in string %s", value);
            return -1;
        }
        *pr += *p - '0';
        p++;
    }
    return 1;
}