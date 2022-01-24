#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* WriteTotalTimeoutMultiplier; void* WriteTotalTimeoutConstant; void* ReadTotalTimeoutMultiplier; void* ReadTotalTimeoutConstant; void* ReadIntervalTimeout; } ;
typedef  void* DWORD ;
typedef  TYPE_1__ COMMTIMEOUTS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  hPortHandle ; 

BOOL FUNC5(DWORD ReadIntervalTimeout, DWORD ReadTotalTimeoutMultiplier, DWORD ReadTotalTimeoutConstant, DWORD WriteTotalTimeoutMultiplier, DWORD WriteTotalTimeoutConstant)
{
    COMMTIMEOUTS    ct;
    DWORD            ErrorCode;

    if (!FUNC0(hPortHandle, &ct))
    {
        ErrorCode = FUNC1();

        FUNC4(FUNC3("GetCommTimeouts() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    ct.ReadIntervalTimeout = ReadIntervalTimeout;
    ct.ReadTotalTimeoutConstant = ReadTotalTimeoutConstant;
    ct.ReadTotalTimeoutMultiplier = ReadTotalTimeoutMultiplier;
    ct.WriteTotalTimeoutConstant = WriteTotalTimeoutConstant;
    ct.WriteTotalTimeoutMultiplier = WriteTotalTimeoutMultiplier;

    if (!FUNC2(hPortHandle, &ct))
    {
        ErrorCode = FUNC1();

        FUNC4(FUNC3("SetCommTimeouts() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    return TRUE;
}