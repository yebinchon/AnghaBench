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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

int
FUNC5(void)
{
#if defined(__linux__)
    FILE *fp;
    int err;
    char line[256];
    int found = 0;

    err = FUNC3(&fp, "/proc/modules", "rb");
    if (err)
        return 0;

    while (FUNC2(line, sizeof(line), fp)) {
        if (FUNC4(line, "pf_ring ", 8) == 0) {
            found = 1;
            FUNC0(2, "pfring: found 'pf_ring' driver\n");
        }
        if (FUNC4(line, "ixgbe ", 6) == 0) {
            FUNC0(2, "pfring: found 'ixgbe' driver\n");
        }
        if (FUNC4(line, "e1000e ", 8) == 0) {
            FUNC0(2, "pfring: found 'e1000e' driver\n");
        }
    }
    FUNC1(fp);
    return found;
#else
    return 0;
#endif
}