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
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  char* INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  IDS_DEVICE_STATUS_HEADER ; 
 int /*<<< orphan*/  IDS_ERROR_QUERY_DEVICES_FORM ; 
 int /*<<< orphan*/  IDS_PRINTER_OUTPUT_NOT_REROUTED ; 
 int /*<<< orphan*/  IDS_PRINTER_OUTPUT_REROUTED_SERIAL ; 
 int MAX_PORTNAME_LEN ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

int FUNC11(INT nPortNum)
{
    WCHAR buffer[250];
    WCHAR szPortName[MAX_PORTNAME_LEN];

    FUNC9(szPortName, L"LPT%d", nPortNum);

    FUNC2(StdOut, L"\n");
    FUNC7(StdOut, IDS_DEVICE_STATUS_HEADER, szPortName);
    FUNC2(StdOut, L"\n");

    if (FUNC6(szPortName, buffer, FUNC0(buffer)))
    {
        PWSTR ptr = FUNC10(buffer, L'\\');
        if (ptr != NULL)
        {
            if (FUNC8(szPortName, ++ptr) == 0)
                FUNC4(StdOut, IDS_PRINTER_OUTPUT_NOT_REROUTED);
            else
                FUNC3(StdOut, IDS_PRINTER_OUTPUT_REROUTED_SERIAL, ptr);

            return 0;
        }
        else
        {
            FUNC3(StdErr, IDS_ERROR_QUERY_DEVICES_FORM, szPortName, buffer);
        }
    }
    else
    {
        FUNC1(StdErr, L"ERROR: QueryDosDeviceW(%s) failed: 0x%lx\n", szPortName, FUNC5());
    }
    FUNC2(StdOut, L"\n");

    return 1;
}