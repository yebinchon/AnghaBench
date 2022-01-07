
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int szUserName; } ;
struct TYPE_5__ {void* usri3_home_dir_drive; int * usri3_home_dir; int * usri3_script_path; int * usri3_profile; } ;
typedef int TCHAR ;
typedef TYPE_1__* PUSER_INFO_3 ;
typedef TYPE_2__* PPROFILE_USER_DATA ;
typedef scalar_t__ NET_API_STATUS ;
typedef void* LPTSTR ;
typedef int LPBYTE ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ BST_CHECKED ;
 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETLBTEXT ;
 int CB_GETLBTEXTLEN ;
 int DebugPrintf (int ,scalar_t__,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetDlgItemText (int ,int ,void*,int) ;
 int GetProcessHeap () ;
 int GetWindowTextLength (int ) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int IDC_USER_PROFILE_DRIVE ;
 int IDC_USER_PROFILE_LOCAL ;
 int IDC_USER_PROFILE_LOCAL_PATH ;
 int IDC_USER_PROFILE_PATH ;
 int IDC_USER_PROFILE_REMOTE_PATH ;
 int IDC_USER_PROFILE_SCRIPT ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 int NetUserGetInfo (int *,int ,int,int *) ;
 scalar_t__ NetUserSetInfo (int *,int ,int,int ,int *) ;
 int SendMessage (int ,int ,int,int ) ;
 int _T (char*) ;

__attribute__((used)) static BOOL
SetUserProfileData(HWND hwndDlg,
                   PPROFILE_USER_DATA pUserData)
{
    PUSER_INFO_3 pUserInfo = ((void*)0);
    LPTSTR pszProfilePath = ((void*)0);
    LPTSTR pszScriptPath = ((void*)0);
    LPTSTR pszHomeDir = ((void*)0);
    LPTSTR pszHomeDrive = ((void*)0);
    NET_API_STATUS status;
    DWORD dwIndex;
    INT nLength;
    INT nIndex;

    NetUserGetInfo(((void*)0), pUserData->szUserName, 3, (LPBYTE*)&pUserInfo);


    nLength = GetWindowTextLength(GetDlgItem(hwndDlg, IDC_USER_PROFILE_PATH));
    if (nLength == 0)
    {
        pUserInfo->usri3_profile = ((void*)0);
    }
    else
    {
        pszProfilePath = HeapAlloc(GetProcessHeap(), 0, (nLength + 1) * sizeof(TCHAR));
        GetDlgItemText(hwndDlg, IDC_USER_PROFILE_PATH, pszProfilePath, nLength + 1);
        pUserInfo->usri3_profile = pszProfilePath;
    }


    nLength = GetWindowTextLength(GetDlgItem(hwndDlg, IDC_USER_PROFILE_SCRIPT));
    if (nLength == 0)
    {
        pUserInfo->usri3_script_path = ((void*)0);
    }
    else
    {
        pszScriptPath = HeapAlloc(GetProcessHeap(), 0, (nLength + 1) * sizeof(TCHAR));
        GetDlgItemText(hwndDlg, IDC_USER_PROFILE_SCRIPT, pszScriptPath, nLength + 1);
        pUserInfo->usri3_script_path = pszScriptPath;
    }

    if (IsDlgButtonChecked(hwndDlg, IDC_USER_PROFILE_LOCAL) == BST_CHECKED)
    {

        nLength = GetWindowTextLength(GetDlgItem(hwndDlg, IDC_USER_PROFILE_LOCAL_PATH));
        if (nLength == 0)
        {
            pUserInfo->usri3_home_dir = ((void*)0);
        }
        else
        {
            pszHomeDir = HeapAlloc(GetProcessHeap(), 0, (nLength + 1) * sizeof(TCHAR));
            GetDlgItemText(hwndDlg, IDC_USER_PROFILE_LOCAL_PATH, pszHomeDir, nLength + 1);
            pUserInfo->usri3_home_dir = pszHomeDir;
        }
    }
    else
    {

        nLength = GetWindowTextLength(GetDlgItem(hwndDlg, IDC_USER_PROFILE_REMOTE_PATH));
        if (nLength == 0)
        {
            pUserInfo->usri3_home_dir = ((void*)0);
        }
        else
        {
            pszHomeDir = HeapAlloc(GetProcessHeap(), 0, (nLength + 1) * sizeof(TCHAR));
            GetDlgItemText(hwndDlg, IDC_USER_PROFILE_REMOTE_PATH, pszHomeDir, nLength + 1);
            pUserInfo->usri3_home_dir = pszHomeDir;
        }

        nIndex = SendMessage(GetDlgItem(hwndDlg, IDC_USER_PROFILE_DRIVE), CB_GETCURSEL, 0, 0);
        if (nIndex != CB_ERR)
        {
            nLength = SendMessage(GetDlgItem(hwndDlg, IDC_USER_PROFILE_DRIVE), CB_GETLBTEXTLEN, nIndex, 0);
            pszHomeDrive = HeapAlloc(GetProcessHeap(), 0, (nLength + 1) * sizeof(TCHAR));
            SendMessage(GetDlgItem(hwndDlg, IDC_USER_PROFILE_DRIVE), CB_GETLBTEXT, nIndex, (LPARAM)pszHomeDrive);
            pUserInfo->usri3_home_dir_drive = pszHomeDrive;
        }
    }

    status = NetUserSetInfo(((void*)0), pUserData->szUserName, 3, (LPBYTE)pUserInfo, &dwIndex);
    if (status != NERR_Success)
    {
        DebugPrintf(_T("Status: %lu  Index: %lu"), status, dwIndex);
    }

    if (pszProfilePath)
        HeapFree(GetProcessHeap(), 0, pszProfilePath);

    if (pszScriptPath)
        HeapFree(GetProcessHeap(), 0, pszScriptPath);

    if (pszHomeDir)
        HeapFree(GetProcessHeap(), 0, pszHomeDir);

    if (pszHomeDrive)
        HeapFree(GetProcessHeap(), 0, pszHomeDrive);

    NetApiBufferFree(pUserInfo);

    return (status == NERR_Success);
}
