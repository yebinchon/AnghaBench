#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  waveOut ;
typedef  int /*<<< orphan*/  szText ;
typedef  int WCHAR ;
struct TYPE_9__ {scalar_t__ wPid; scalar_t__ wMid; int cbSize; int /*<<< orphan*/  szPname; } ;
typedef  TYPE_1__ WAVEOUTCAPSW ;
typedef  int UINT ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  InfoData ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HDEVINFO ;
typedef  int DWORD ;

/* Variables and functions */
 int DIGCF_PRESENT ; 
 int DIGCF_PROFILE ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  IDC_STATIC_ADAPTER_PROVIDER ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_DATE ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_DEVICEID ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_DRIVER ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_PRODUCTID ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_STANDARD ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_TYPE ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_VENDORID ; 
 int /*<<< orphan*/  IDC_STATIC_DSOUND_VERSION ; 
 int /*<<< orphan*/  IDS_OPTION_NO ; 
 int /*<<< orphan*/  IDS_OPTION_YES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  MAXPNAMELEN ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ MM_MSFT_WDMAUDIO_WAVEOUT ; 
 int /*<<< orphan*/  SPDRP_MFG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (scalar_t__,TYPE_1__*,int*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC17(HWND hwndDlg, LPCGUID classGUID, LPCWSTR lpcstrDescription)
{
    HDEVINFO hInfo;
    DWORD dwIndex = 0;
    SP_DEVINFO_DATA InfoData;
    WCHAR szText[30];
    HWND hDlgCtrls[3];
    WAVEOUTCAPSW waveOut;
    UINT numDev;
    MMRESULT errCode;


    /*  enumerate waveout devices */
    numDev = FUNC14();
    if (numDev)
    {
        do
        {
                FUNC11(&waveOut, sizeof(waveOut));
                errCode = FUNC13(dwIndex++, &waveOut, sizeof(waveOut));
                if (!FUNC16(lpcstrDescription, waveOut.szPname, FUNC12(MAXPNAMELEN, FUNC15(waveOut.szPname))))
                {
                    /* set the product id */
                    FUNC5(hwndDlg, IDC_STATIC_DSOUND_PRODUCTID, waveOut.wPid, FALSE);
                    /* set the vendor id */
                    FUNC5(hwndDlg, IDC_STATIC_DSOUND_VENDORID, waveOut.wMid, FALSE);
                    /* check if it's a WDM audio driver */
                    if (waveOut.wPid == MM_MSFT_WDMAUDIO_WAVEOUT)
                        FUNC4(hwndDlg, IDC_STATIC_DSOUND_TYPE, WM_SETTEXT, 0, (LPARAM)L"WDM");

                    /* check if device is default device */
                    szText[0] = L'\0';
                    if (dwIndex - 1 == 0) /* FIXME assume default playback device is device 0 */
                        FUNC3(hInst, IDS_OPTION_YES, szText, sizeof(szText)/sizeof(WCHAR));
                    else
                        FUNC3(hInst, IDS_OPTION_NO, szText, sizeof(szText)/sizeof(WCHAR));

                    szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';
                    /* set default device info */
                    FUNC4(hwndDlg, IDC_STATIC_DSOUND_STANDARD, WM_SETTEXT, 0, (LPARAM)szText);
                    break;
                }
                }while(errCode == MMSYSERR_NOERROR && dwIndex < numDev);
    }

    dwIndex = 0;
    /* create the setup list */
    hInfo = FUNC8(classGUID, NULL, NULL, DIGCF_PRESENT|DIGCF_PROFILE);
    if (hInfo == INVALID_HANDLE_VALUE)
        return;

    do
    {
        FUNC11(&InfoData, sizeof(InfoData));
        InfoData.cbSize = sizeof(InfoData);

        if (FUNC7(hInfo, dwIndex, &InfoData))
        {
            /* set device name */
            if (FUNC9(hInfo, &InfoData, szText, sizeof(szText)/sizeof(WCHAR), NULL))
                FUNC4(hwndDlg, IDC_STATIC_DSOUND_DEVICEID, WM_SETTEXT, 0, (LPARAM)szText);

            /* set the manufacturer name */
            if (FUNC10(hInfo, &InfoData, SPDRP_MFG, NULL, (PBYTE)szText, sizeof(szText), NULL))
                FUNC4(hwndDlg, IDC_STATIC_ADAPTER_PROVIDER, WM_SETTEXT, 0, (LPARAM)szText);

            /* FIXME
             * we currently enumerate only the first adapter 
             */
            hDlgCtrls[0] = FUNC1(hwndDlg, IDC_STATIC_DSOUND_DRIVER);
            hDlgCtrls[1] = FUNC1(hwndDlg, IDC_STATIC_DSOUND_VERSION);
            hDlgCtrls[2] = FUNC1(hwndDlg, IDC_STATIC_DSOUND_DATE);
            FUNC0(hDlgCtrls, hInfo, &InfoData);
            break;
        }

        if (FUNC2() == ERROR_NO_MORE_ITEMS)
            break;

        dwIndex++;
    }while(TRUE);

    /* destroy the setup list */
    FUNC6(hInfo);
}