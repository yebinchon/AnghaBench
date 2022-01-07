
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int TCHAR ;
typedef int LPCTSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ChangeFileACL (int *,int ) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_NO_MORE_FILES ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int ,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetLastError () ;
 int GetPathOfFile (int *,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OptionC ;
 int PrintError (scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOL
ChangeACLsOfFiles(LPCTSTR pszFiles)
{
    TCHAR FilePath[MAX_PATH];
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    DWORD LastError;




    if (!GetPathOfFile(FilePath, pszFiles))
        return FALSE;




    hFind = FindFirstFile(pszFiles, &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;

    do
    {
        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        if (!ChangeFileACL(FilePath, FindData.cFileName))
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

    return TRUE;
}
