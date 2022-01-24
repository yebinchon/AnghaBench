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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  StdOut ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 

int FUNC4(int argc, WCHAR **argv)
{
    int iErr, iRet = 0;

    /* Initialize the Console Standard Streams */
    FUNC0();

    if(argc != 2 && argc != 3)
    {
        FUNC1(StdOut, IDS_USAGE);
        return 2;
    }

    iErr = FUNC2(argv[1], argc == 3 ? argv[2] : NULL);
    if (iErr <= 0)
        iRet = FUNC3(iErr);

    return iRet;
}