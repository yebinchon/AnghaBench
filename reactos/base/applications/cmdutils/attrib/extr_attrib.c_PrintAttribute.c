
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int * cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int ConPrintf (int ,char*,int,int,int,int,int *) ;
 int ErrorMessage (int ,int *) ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (int *,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int StdOut ;
 int wcscat (int *,char*) ;
 int wcscmp (int *,char*) ;
 int wcscpy (int *,int *) ;
 int wcslen (int *) ;

__attribute__((used)) static
INT
PrintAttribute(
    LPWSTR pszPath,
    LPWSTR pszFile,
    BOOL bRecurse)
{
    WIN32_FIND_DATAW findData;
    HANDLE hFind;
    WCHAR szFullName[MAX_PATH];
    LPWSTR pszFileName;


    wcscpy(szFullName, pszPath);
    pszFileName = szFullName + wcslen(szFullName);


    if (bRecurse)
    {

        wcscpy(pszFileName, pszFile);

        hFind = FindFirstFileW(szFullName, &findData);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            ErrorMessage(GetLastError(), pszFile);
            return 1;
        }

        do
        {
            if (!(findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
                continue;

            if (!wcscmp(findData.cFileName, L".") ||
                !wcscmp(findData.cFileName, L".."))
                continue;

            wcscpy(pszFileName, findData.cFileName);
            wcscat(pszFileName, L"\\");
            PrintAttribute(szFullName, pszFile, bRecurse);
        }
        while(FindNextFileW(hFind, &findData));
        FindClose(hFind);
    }


    wcscpy(pszFileName, pszFile);


    hFind = FindFirstFileW(szFullName, &findData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        ErrorMessage(GetLastError(), pszFile);
        return 1;
    }

    do
    {
        if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        wcscpy(pszFileName, findData.cFileName);

        ConPrintf(StdOut,
                  L"%c  %c%c%c     %s\n",
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_ARCHIVE) ? L'A' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_SYSTEM) ? L'S' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_HIDDEN) ? L'H' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_READONLY) ? L'R' : L' ',
                  szFullName);
    }
    while(FindNextFileW(hFind, &findData));
    FindClose(hFind);

    return 0;
}
