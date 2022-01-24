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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(FILE* stream, const char *prefix, bool use_color, int lev)
{
    // Use random color based on the name of the module
    if (use_color) {
        size_t prefix_len = FUNC3(prefix);
        unsigned int mod = 0;
        for (int i = 0; i < prefix_len; ++i)
            mod = mod * 33 + prefix[i];
        FUNC2(stream, (mod + 1) % 15 + 1);
    }

    FUNC0(stream, "%10s", prefix);
    if (use_color)
        FUNC2(stream, -1);
    FUNC0(stream, ": ");
    if (use_color)
        FUNC1(stream, lev);
}