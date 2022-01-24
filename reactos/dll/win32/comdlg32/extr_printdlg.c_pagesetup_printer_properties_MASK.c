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
typedef  int /*<<< orphan*/  pagesetup_data ;
typedef  scalar_t__ WORD ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DEVMODEW ;

/* Variables and functions */
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCOUNT ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DM_IN_BUFFER ; 
 int DM_IN_PROMPT ; 
 int DM_OUT_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmb2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(HWND hDlg, pagesetup_data *data)
{
    HANDLE hprn;
    LPWSTR devname;
    DEVMODEW *dm;
    LRESULT count;
    int i;

    devname = FUNC7(data);

    if (!FUNC3(devname, &hprn, NULL))
    {
        FUNC2("Call to OpenPrinter did not succeed!\n");
        FUNC9(data, devname);
        return;
    }

    dm = FUNC6(data);
    FUNC1(hDlg, hprn, devname, dm, dm, DM_IN_BUFFER | DM_OUT_BUFFER | DM_IN_PROMPT);
    FUNC11(data, dm);
    FUNC10(data, dm);
    FUNC9(data, devname);
    FUNC0(hprn);

    /* Changing paper */
    FUNC13(data);
    FUNC12(hDlg, data);

    /* Changing paper preview */
    FUNC5(data);

    /* Selecting paper in combo */
    count = FUNC4(hDlg, cmb2, CB_GETCOUNT, 0, 0);
    if(count != CB_ERR)
    {
        WORD paperword = FUNC8(data);
        for(i = 0; i < count; i++)
        {
            if(FUNC4(hDlg, cmb2, CB_GETITEMDATA, i, 0) == paperword) {
                FUNC4(hDlg, cmb2, CB_SETCURSEL, i, 0);
                break;
            }
        }
    }
}