#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pagesetup_data ;
struct TYPE_8__ {int /*<<< orphan*/  pPortName; int /*<<< orphan*/  pPrinterName; int /*<<< orphan*/  pDriverPath; } ;
typedef  TYPE_1__ PRINTER_INFO_2W ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DRIVER_INFO_3W ;
typedef  TYPE_1__ DEVMODEW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_OUT_BUFFER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC12(LPWSTR name, pagesetup_data *data)
{
    HANDLE hprn;
    DWORD needed;
    PRINTER_INFO_2W *prn_info = NULL;
    DRIVER_INFO_3W *drv_info = NULL;
    DEVMODEW *dm = NULL;
    BOOL retval = FALSE;

    if(!FUNC8(name, &hprn, NULL))
    {
        FUNC2("Can't open printer %s\n", FUNC9(name));
        goto end;
    }

    FUNC4(hprn, 2, NULL, 0, &needed);
    prn_info = FUNC6(FUNC5(), 0, needed);
    FUNC4(hprn, 2, (LPBYTE)prn_info, needed, &needed);
    FUNC3(hprn, NULL, 3, NULL, 0, &needed);
    drv_info = FUNC6(FUNC5(), 0, needed);
    if(!FUNC3(hprn, NULL, 3, (LPBYTE)drv_info, needed, &needed))
    {
        FUNC2("GetPrinterDriverA failed for %s, fix your config!\n", FUNC9(prn_info->pPrinterName));
        goto end;
    }
    FUNC0(hprn);

    needed = FUNC1(0, 0, name, NULL, NULL, 0);
    if(needed == -1)
    {
        FUNC2("DocumentProperties fails on %s\n", FUNC9(name));
        goto end;
    }

    dm = FUNC6(FUNC5(), 0, needed);
    FUNC1(0, 0, name, dm, NULL, DM_OUT_BUFFER);

    FUNC10(data, dm);
    FUNC11(data, drv_info->pDriverPath, prn_info->pPrinterName,
                           prn_info->pPortName);

    retval = TRUE;
end:
    FUNC7(FUNC5(), 0, dm);
    FUNC7(FUNC5(), 0, prn_info);
    FUNC7(FUNC5(), 0, drv_info);
    return retval;
}