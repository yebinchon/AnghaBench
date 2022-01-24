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
 int /*<<< orphan*/  M_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 unsigned int FUNC4 () ; 

__attribute__((used)) static void
FUNC5(const char *filename)
{
    if (filename)
    {
        unsigned int pid = 0;
        FILE *fp = FUNC3(filename, "w");
        if (!fp)
        {
            FUNC2(M_ERR, "Open error on pid file %s", filename);
        }

        pid = FUNC4();
        FUNC1(fp, "%u\n", pid);
        if (FUNC0(fp))
        {
            FUNC2(M_ERR, "Close error on pid file %s", filename);
        }
    }
}