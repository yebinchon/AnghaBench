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
 int cfd ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
    int ret;

    if (cfd < 0)
        return 1;
    ret = FUNC0(cfd);
    cfd = -1;
    if (ret != 0) {
        FUNC1(stderr, "Error closing /dev/crypto: %s\n", FUNC2(errno));
        return 0;
    }
    return 1;
}