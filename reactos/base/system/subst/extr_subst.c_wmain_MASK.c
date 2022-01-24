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
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  IDS_INCORRECT_PARAMETER_COUNT ; 
 int /*<<< orphan*/  IDS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

int FUNC7(int argc, WCHAR* argv[])
{
    INT i;

    /* Initialize the Console Standard Streams */
    FUNC1();

    for (i = 0; i < argc; i++)
    {
        if (!FUNC6(argv[i], L"/?"))
        {
            FUNC3(StdOut, IDS_USAGE);
            return 0;
        }
    }

    if (argc < 3)
    {
        if (argc >= 2)
        {
            FUNC2(StdErr, IDS_INVALID_PARAMETER, argv[1]);
            return 1;
        }
        FUNC5();
        return 0;
    }

    if (argc > 3)
    {
        FUNC2(StdErr, IDS_INCORRECT_PARAMETER_COUNT, argv[3]);
        return 1;
    }

    if (!FUNC6(argv[1], L"/D"))
        return FUNC4(argv[2]);
    if (!FUNC6(argv[2], L"/D"))
        return FUNC4(argv[1]);
    return FUNC0(argv[1], argv[2]);
}