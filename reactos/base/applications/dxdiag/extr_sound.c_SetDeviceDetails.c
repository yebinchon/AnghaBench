
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int waveOut ;
typedef int szText ;
typedef int WCHAR ;
struct TYPE_9__ {scalar_t__ wPid; scalar_t__ wMid; int cbSize; int szPname; } ;
typedef TYPE_1__ WAVEOUTCAPSW ;
typedef int UINT ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef int PBYTE ;
typedef scalar_t__ MMRESULT ;
typedef int LPCWSTR ;
typedef int LPCGUID ;
typedef int LPARAM ;
typedef int InfoData ;
typedef int HWND ;
typedef scalar_t__ HDEVINFO ;
typedef int DWORD ;


 int DIGCF_PRESENT ;
 int DIGCF_PROFILE ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 int EnumerateDrivers (int *,scalar_t__,TYPE_1__*) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetLastError () ;
 int IDC_STATIC_ADAPTER_PROVIDER ;
 int IDC_STATIC_DSOUND_DATE ;
 int IDC_STATIC_DSOUND_DEVICEID ;
 int IDC_STATIC_DSOUND_DRIVER ;
 int IDC_STATIC_DSOUND_PRODUCTID ;
 int IDC_STATIC_DSOUND_STANDARD ;
 int IDC_STATIC_DSOUND_TYPE ;
 int IDC_STATIC_DSOUND_VENDORID ;
 int IDC_STATIC_DSOUND_VERSION ;
 int IDS_OPTION_NO ;
 int IDS_OPTION_YES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadStringW (int ,int ,int*,int) ;
 int MAXPNAMELEN ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ MM_MSFT_WDMAUDIO_WAVEOUT ;
 int SPDRP_MFG ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetDlgItemInt (int ,int ,scalar_t__,int ) ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 scalar_t__ SetupDiEnumDeviceInfo (scalar_t__,int,TYPE_1__*) ;
 scalar_t__ SetupDiGetClassDevsW (int ,int *,int *,int) ;
 scalar_t__ SetupDiGetDeviceInstanceId (scalar_t__,TYPE_1__*,int*,int,int *) ;
 scalar_t__ SetupDiGetDeviceRegistryPropertyW (scalar_t__,TYPE_1__*,int ,int *,int ,int,int *) ;
 scalar_t__ TRUE ;
 int WM_SETTEXT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hInst ;
 int min (int ,int ) ;
 scalar_t__ waveOutGetDevCapsW (int ,TYPE_1__*,int) ;
 int waveOutGetNumDevs () ;
 int wcslen (int ) ;
 int wcsncmp (int ,int ,int ) ;

__attribute__((used)) static
void
SetDeviceDetails(HWND hwndDlg, LPCGUID classGUID, LPCWSTR lpcstrDescription)
{
    HDEVINFO hInfo;
    DWORD dwIndex = 0;
    SP_DEVINFO_DATA InfoData;
    WCHAR szText[30];
    HWND hDlgCtrls[3];
    WAVEOUTCAPSW waveOut;
    UINT numDev;
    MMRESULT errCode;



    numDev = waveOutGetNumDevs();
    if (numDev)
    {
        do
        {
                ZeroMemory(&waveOut, sizeof(waveOut));
                errCode = waveOutGetDevCapsW(dwIndex++, &waveOut, sizeof(waveOut));
                if (!wcsncmp(lpcstrDescription, waveOut.szPname, min(MAXPNAMELEN, wcslen(waveOut.szPname))))
                {

                    SetDlgItemInt(hwndDlg, IDC_STATIC_DSOUND_PRODUCTID, waveOut.wPid, FALSE);

                    SetDlgItemInt(hwndDlg, IDC_STATIC_DSOUND_VENDORID, waveOut.wMid, FALSE);

                    if (waveOut.wPid == MM_MSFT_WDMAUDIO_WAVEOUT)
                        SendDlgItemMessageW(hwndDlg, IDC_STATIC_DSOUND_TYPE, WM_SETTEXT, 0, (LPARAM)L"WDM");


                    szText[0] = L'\0';
                    if (dwIndex - 1 == 0)
                        LoadStringW(hInst, IDS_OPTION_YES, szText, sizeof(szText)/sizeof(WCHAR));
                    else
                        LoadStringW(hInst, IDS_OPTION_NO, szText, sizeof(szText)/sizeof(WCHAR));

                    szText[(sizeof(szText)/sizeof(WCHAR))-1] = L'\0';

                    SendDlgItemMessageW(hwndDlg, IDC_STATIC_DSOUND_STANDARD, WM_SETTEXT, 0, (LPARAM)szText);
                    break;
                }
                }while(errCode == MMSYSERR_NOERROR && dwIndex < numDev);
    }

    dwIndex = 0;

    hInfo = SetupDiGetClassDevsW(classGUID, ((void*)0), ((void*)0), DIGCF_PRESENT|DIGCF_PROFILE);
    if (hInfo == INVALID_HANDLE_VALUE)
        return;

    do
    {
        ZeroMemory(&InfoData, sizeof(InfoData));
        InfoData.cbSize = sizeof(InfoData);

        if (SetupDiEnumDeviceInfo(hInfo, dwIndex, &InfoData))
        {

            if (SetupDiGetDeviceInstanceId(hInfo, &InfoData, szText, sizeof(szText)/sizeof(WCHAR), ((void*)0)))
                SendDlgItemMessageW(hwndDlg, IDC_STATIC_DSOUND_DEVICEID, WM_SETTEXT, 0, (LPARAM)szText);


            if (SetupDiGetDeviceRegistryPropertyW(hInfo, &InfoData, SPDRP_MFG, ((void*)0), (PBYTE)szText, sizeof(szText), ((void*)0)))
                SendDlgItemMessageW(hwndDlg, IDC_STATIC_ADAPTER_PROVIDER, WM_SETTEXT, 0, (LPARAM)szText);




            hDlgCtrls[0] = GetDlgItem(hwndDlg, IDC_STATIC_DSOUND_DRIVER);
            hDlgCtrls[1] = GetDlgItem(hwndDlg, IDC_STATIC_DSOUND_VERSION);
            hDlgCtrls[2] = GetDlgItem(hwndDlg, IDC_STATIC_DSOUND_DATE);
            EnumerateDrivers(hDlgCtrls, hInfo, &InfoData);
            break;
        }

        if (GetLastError() == ERROR_NO_MORE_ITEMS)
            break;

        dwIndex++;
    }while(TRUE);


    SetupDiDestroyDeviceInfoList(hInfo);
}
