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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int MAX_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int argc, char *argv[]) {
    char line[MAX_CHARS];

    if (argc != 1) {
        FUNC1(stderr, "Usage: %s\n", argv[0]);
        FUNC0(-1);
    }

    while (FUNC5(line, MAX_CHARS) != (char *)NULL) {

        /* parse text into JSON structure */
        json_t *root = FUNC3(line);

        if (root) {
            /* print and release the JSON structure */
            FUNC4(root);
            FUNC2(root);
        }
    }

    return 0;
}