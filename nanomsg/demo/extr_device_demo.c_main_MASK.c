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
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6 (int argc, char **argv)
{
    int rc;

    if ((argc == 3) && (FUNC5 (argv[1], "-s") == 0)) {
        rc = FUNC4 (argv[2]);
    } else if ((argc == 4) && (FUNC5 (argv[1], "-d") == 0)) {
        rc = FUNC1 (argv[2], argv[3]);
    } else if ((argc == 4) && (FUNC5 (argv[1], "-c") == 0)) {
        rc = FUNC0 (argv[2], argv[3]);
    } else {
        FUNC3 (stderr, "Usage: %s -s <serverurl>\n", argv[0]);
        FUNC3 (stderr, "Usage: %s -d <serverurl> <clienturl>\n", argv[0]);
        FUNC3 (stderr, "Usage: %s -c <clienturl> <name>\n", argv[0]);
        FUNC2 (EXIT_FAILURE);
    }
    
    FUNC2 (rc == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
}