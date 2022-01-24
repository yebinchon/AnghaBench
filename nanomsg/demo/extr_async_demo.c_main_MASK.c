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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5 (int argc, char **argv)
{
    int rc;
    if (argc < 3) {
        FUNC2 (stderr, "Usage: %s <url> [-s|name]\n", argv[0]);
        FUNC1 (EXIT_FAILURE);
    }
    if (FUNC4 (argv[2], "-s") == 0) {
        rc = FUNC3 (argv[1]);
    } else {
        rc = FUNC0 (argv[1], argv[2]);
    }
    FUNC1 (rc == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
}