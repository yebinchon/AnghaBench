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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (unsigned char const) ; 

__attribute__((used)) static unsigned char *
FUNC5(   const unsigned char *pattern,
                        unsigned pattern_length,
                        unsigned is_nocase)
{
    unsigned char *result;

    /* allocate space */
    result = (unsigned char *)FUNC2(pattern_length+1);
    if (result == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }

    /* copy, removing case if necessary */
    if (is_nocase) {
        unsigned i;
        for (i=0; i<pattern_length; i++) {
            result[i] = (unsigned char)(FUNC4(pattern[i]));
        }
    } else
        FUNC3(result, pattern, pattern_length);

    /* NUL terminate the string. This makes debugging easier when patterns
     * are text. However, the NUL terminator is never used by the program
     * to end the string -- we always use the length instead. */
    result[pattern_length] = '\0';

    return result;
}