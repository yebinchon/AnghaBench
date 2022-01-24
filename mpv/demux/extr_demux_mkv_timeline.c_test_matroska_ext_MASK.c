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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static bool FUNC2(const char *filename)
{
    static const char *const exts[] = {".mkv", ".mka", ".mks", ".mk3d", NULL};
    for (int n = 0; exts[n]; n++) {
        const char *suffix = exts[n];
        int offset = FUNC1(filename) - FUNC1(suffix);
        // name must end with suffix
        if (offset > 0 && FUNC0(filename + offset, suffix) == 0)
            return true;
    }
    return false;
}