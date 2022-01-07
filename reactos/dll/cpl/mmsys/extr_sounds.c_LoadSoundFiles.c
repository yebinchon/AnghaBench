
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int dwFileAttributes; int* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef int UINT ;
typedef int TCHAR ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CB_ADDSTRING ;
 scalar_t__ CB_ERR ;
 int CB_SETITEMDATA ;
 int ComboBox_AddString (int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int*,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowsDirectoryW (int*,int) ;
 int IDC_SOUND_LIST ;
 int IDS_NO_SOUND ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ LoadString (int ,int ,int *,int) ;
 int MAX_PATH ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int TEXT (char) ;
 int TRUE ;
 int _countof (int *) ;
 scalar_t__ _wcsdup (int*) ;
 int hApplet ;
 int wcscpy (int*,char*) ;
 int* wcsrchr (int*,int) ;

BOOL
LoadSoundFiles(HWND hwndDlg)
{
    TCHAR szList[256];
    WCHAR szPath[MAX_PATH];
    WCHAR * ptr;
    WIN32_FIND_DATAW FileData;
    HANDLE hFile;
    LRESULT lResult;
    UINT length;


    if (LoadString(hApplet, IDS_NO_SOUND, szList, _countof(szList)))
    {
        szList[_countof(szList) - 1] = TEXT('\0');
        ComboBox_AddString(GetDlgItem(hwndDlg, IDC_SOUND_LIST), szList);
    }


    length = GetWindowsDirectoryW(szPath, MAX_PATH);
    if (length == 0 || length >= MAX_PATH - 9)
    {
        return FALSE;
    }
    if (szPath[length-1] != L'\\')
    {
        szPath[length] = L'\\';
        length++;
    }
    wcscpy(&szPath[length], L"media\\*");
    length += 7;

    hFile = FindFirstFileW(szPath, &FileData);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return FALSE;
    }

    do
    {
        if (FileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        ptr = wcsrchr(FileData.cFileName, L'\\');
        if (ptr)
        {
            ptr++;
        }
        else
        {
            ptr = FileData.cFileName;
        }
        lResult = SendDlgItemMessageW(hwndDlg, IDC_SOUND_LIST, CB_ADDSTRING, (WPARAM)0, (LPARAM)ptr);
        if (lResult != CB_ERR)
        {
            wcscpy(&szPath[length-1], FileData.cFileName);
            SendDlgItemMessageW(hwndDlg, IDC_SOUND_LIST, CB_SETITEMDATA, (WPARAM)lResult, (LPARAM)_wcsdup(szPath));
        }
    } while (FindNextFileW(hFile, &FileData) != 0);

    FindClose(hFile);
    return TRUE;
}
