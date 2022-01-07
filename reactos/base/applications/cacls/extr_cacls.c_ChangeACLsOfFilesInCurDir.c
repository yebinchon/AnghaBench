
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int * cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int TCHAR ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int AddBackslash (int *) ;
 int ChangeFileACL (int *,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int ,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 int GetCurrentDirectory (int,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OptionC ;
 int PrintError (scalar_t__) ;
 scalar_t__ SetCurrentDirectory (int *) ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcscmp (int *,int ) ;

__attribute__((used)) static BOOL
ChangeACLsOfFilesInCurDir(LPCTSTR pszFiles)
{
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    TCHAR szCurDir[MAX_PATH];
    DWORD LastError;




    GetCurrentDirectory(MAX_PATH, szCurDir);
    AddBackslash(szCurDir);




    hFind = FindFirstFile(pszFiles, &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;

    do
    {
        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        if (!ChangeFileACL(szCurDir, FindData.cFileName))
        {
            LastError = GetLastError();
            if (LastError == ERROR_ACCESS_DENIED)
            {
                PrintError(LastError);
                if (!OptionC)
                {
                    FindClose(hFind);
                    return FALSE;
                }
            }
            else
                break;
        }
    } while(FindNextFile(hFind, &FindData));

    LastError = GetLastError();
    FindClose(hFind);

    if (LastError != ERROR_NO_MORE_FILES)
    {
        PrintError(LastError);
        return FALSE;
    }




    hFind = FindFirstFile(_T("*"), &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;
    do
    {
        if (_tcscmp(FindData.cFileName, _T(".")) == 0 ||
            _tcscmp(FindData.cFileName, _T("..")) == 0)
            continue;

        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
        {
            GetCurrentDirectory(MAX_PATH, szCurDir);
            if (SetCurrentDirectory(FindData.cFileName))
            {
                ChangeACLsOfFilesInCurDir(pszFiles);
                SetCurrentDirectory(szCurDir);
            }
            else
            {
                LastError = GetLastError();
                if (LastError == ERROR_ACCESS_DENIED)
                {
                    PrintError(LastError);
                    if (!OptionC)
                    {
                        FindClose(hFind);
                        return FALSE;
                    }
                }
                else
                    break;
            }
        }
    } while(FindNextFile(hFind, &FindData));
    LastError = GetLastError();
    FindClose(hFind);

    if (LastError != ERROR_NO_MORE_FILES)
    {
        PrintError(LastError);
        return FALSE;
    }
    return TRUE;
}
