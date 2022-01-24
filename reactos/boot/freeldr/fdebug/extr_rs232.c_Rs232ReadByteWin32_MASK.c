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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hPortHandle ; 

BOOL FUNC4(BYTE* DataByte)
{
    DWORD    BytesRead = 0;
    DWORD    ErrorCode;

    // If ReadFile() fails then report error
    if (!FUNC1(hPortHandle, DataByte, 1, &BytesRead, NULL))
    {
        ErrorCode = FUNC0();

        FUNC3(FUNC2("ReadFile() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    // If ReadFile() succeeds, but BytesRead isn't 1
    // then a timeout occurred.
    if (BytesRead != 1)
    {
        return FALSE;
    }

    return TRUE;
}