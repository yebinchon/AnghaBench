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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(void)
{
    unsigned i;
    int is_success = 0;
    uint64_t m, a, c;


    m = 3015 * 3;

    for (i=0; i<5; i++) {
        a = 0;
        c = 0;

        m += 10 + i;

        FUNC1(m, &a, &c, 0);

        is_success = FUNC2(a, c, m, m);

        if (!is_success) {
            FUNC0(stderr, "LCG: randomization failed\n");
            return 1; /*fail*/
        }
    }

    return 0; /*success*/
}