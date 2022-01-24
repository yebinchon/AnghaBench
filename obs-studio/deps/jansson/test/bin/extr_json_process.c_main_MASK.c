#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int strip; int use_env; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 () ; 

int FUNC5(int argc, char *argv[])
{
    int i;
    char *test_path = NULL;

    #ifdef HAVE_SETLOCALE
    setlocale(LC_ALL, "");
    #endif

    if (argc < 2) {
        goto usage;
    }

    for (i = 1; i < argc; i++) {
        if (!FUNC2(argv[i], "--strip"))
            conf.strip = 1;
        else if (!FUNC2(argv[i], "--env"))
            conf.use_env = 1;
        else
            test_path = argv[i];
    }

    if (conf.use_env)
        return FUNC4();
    else
    {
        if (!test_path)
            goto usage;

        return FUNC3(test_path);
    }

usage:
    FUNC0(stderr, "argc =%d\n", argc);
    FUNC0(stderr, "usage: %s [--strip] [--env] test_dir\n", argv[0]);
    return 2;
}