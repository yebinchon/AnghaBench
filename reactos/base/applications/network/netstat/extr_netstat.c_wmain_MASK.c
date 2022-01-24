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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IDS_ERROR_WSA_START ; 
 int Interval ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ bLoopOutput ; 

int FUNC9(int argc, wchar_t *argv[])
{
    BOOL Success;
    WSADATA wsaData;

    /* Initialize the Console Standard Streams */
    FUNC0();

    if (!FUNC4(argc, argv))
        return EXIT_FAILURE;

    if (FUNC8(FUNC3(2, 2), &wsaData) != 0)
    {
        FUNC1(StdErr, IDS_ERROR_WSA_START, FUNC7());
        return EXIT_FAILURE;
    }

    Success = FUNC2();
    while (bLoopOutput && Success)
    {
        FUNC5(Interval*1000);
        Success = FUNC2();
    }

    FUNC6();
    return (Success ? EXIT_SUCCESS : EXIT_FAILURE);
}