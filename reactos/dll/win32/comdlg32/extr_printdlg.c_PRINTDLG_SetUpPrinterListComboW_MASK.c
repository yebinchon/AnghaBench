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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {scalar_t__ pPrinterName; } ;
typedef  TYPE_1__* LPPRINTER_INFO_2W ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 size_t CB_ERR ; 
 int /*<<< orphan*/  CB_FINDSTRINGEXACT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  PRINTER_ENUM_LOCAL ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static INT FUNC10(HWND hDlg, UINT id, LPCWSTR name)
{
    DWORD needed, num;
    INT i;
    LPPRINTER_INFO_2W pi;
    FUNC1(PRINTER_ENUM_LOCAL, NULL, 2, NULL, 0, &needed, &num);
    pi = FUNC4(FUNC3(), 0, needed);
    FUNC1(PRINTER_ENUM_LOCAL, NULL, 2, (LPBYTE)pi, needed, &needed,
		  &num);

    for(i = 0; i < num; i++) {
        FUNC6(hDlg, id, CB_ADDSTRING, 0,
			    (LPARAM)pi[i].pPrinterName );
    }
    FUNC5(FUNC3(), 0, pi);
    if(!name ||
       (i = FUNC6(hDlg, id, CB_FINDSTRINGEXACT, -1,
				(LPARAM)name)) == CB_ERR) {
        WCHAR buf[260];
        DWORD dwBufLen = FUNC0(buf);
        if (name != NULL)
            FUNC8("Can't find %s in printer list so trying to find default\n",
	        FUNC9(name));
	if(!FUNC2(buf, &dwBufLen))
	    return num;
	i = FUNC6(hDlg, id, CB_FINDSTRINGEXACT, -1, (LPARAM)buf);
	if(i == CB_ERR)
	    FUNC7("Can't find default printer in printer list\n");
    }
    FUNC6(hDlg, id, CB_SETCURSEL, i, 0);
    return num;
}