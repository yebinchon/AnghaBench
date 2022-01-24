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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  change_optW ; 
 int FUNC5 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  create_optW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  delete_optW ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int argc, WCHAR *argv[])
{
    int i, ret = 0;

    for (i = 0; i < argc; i++)
        FUNC3(" %s", FUNC9(argv[i]));
    FUNC3("\n");

    FUNC0(NULL);

    if (argc < 2)
        FUNC2("Print current tasks state\n");
    else if (!FUNC8(argv[1], change_optW))
        ret = FUNC4(argc - 2, argv + 2);
    else if (!FUNC8(argv[1], create_optW))
        ret = FUNC5(argc - 2, argv + 2);
    else if (!FUNC8(argv[1], delete_optW))
        ret = FUNC7(argc - 2, argv + 2);
    else
        FUNC2("Unsupported command %s\n", FUNC6(argv[1]));

    FUNC1();
    return ret;
}