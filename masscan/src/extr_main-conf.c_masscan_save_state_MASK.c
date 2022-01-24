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
struct Masscan {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct Masscan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 

void
FUNC6(struct Masscan *masscan)
{
    char filename[512];
    FILE *fp;
    int err;


    FUNC5(filename, sizeof(filename), "paused.conf");
    FUNC2(stderr, "                                   "
                    "                                   \r");
    FUNC2(stderr, "saving resume file to: %s\n", filename);

    err = FUNC1(&fp, filename, "wt");
    if (err) {
        FUNC4(filename);
        return;
    }

    
    FUNC3(masscan, fp, 0);

    FUNC0(fp);
}