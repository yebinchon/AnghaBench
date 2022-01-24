#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dcb ;
struct TYPE_5__ {int DCBlength; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DCB ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MAXDWORD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hPortHandle ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC7(TCHAR* DeviceControlString)
{
    DCB        dcb;
    DWORD    ErrorCode;

    /*if (!GetCommState(hPortHandle, &dcb))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("GetCommState() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    dcb.BaudRate = BaudRate;
    dcb.ByteSize = DataBits;
    dcb.Parity = Parity;
    dcb.StopBits = StopBits;
    dcb.fBinary = TRUE;
    dcb.fDsrSensitivity = FALSE;
    dcb.fParity = (Parity == NOPARITY) ? FALSE : TRUE;
    dcb.fOutX = FALSE;
    dcb.fInX = FALSE;
    dcb.fNull = FALSE;
    dcb.fAbortOnError = TRUE;
    dcb.fOutxCtsFlow = FALSE;
    dcb.fOutxDsrFlow = FALSE;
    dcb.fDtrControl = DTR_CONTROL_DISABLE;
    dcb.fDsrSensitivity = FALSE;
    dcb.fRtsControl = RTS_CONTROL_DISABLE;
    dcb.fOutxCtsFlow = FALSE;
    dcb.fOutxCtsFlow = FALSE;*/


    FUNC6(&dcb, 0, sizeof(DCB));
    dcb.DCBlength = sizeof(dcb);
    if (!FUNC0(DeviceControlString, &dcb))
    {
        ErrorCode = FUNC1();

        FUNC5(FUNC4("BuildCommDCB() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    if (!FUNC3(hPortHandle, &dcb))
    {
        ErrorCode = FUNC1();

        FUNC5(FUNC4("SetCommState() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    // Set the timeouts
    if (!FUNC2(MAXDWORD, 0, 0, 0, 0))
    {
        return FALSE;
    }

    return TRUE;
}