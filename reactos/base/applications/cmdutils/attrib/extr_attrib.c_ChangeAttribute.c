
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ErrorMessage (int ,char*) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (char*,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 int GetFileAttributes (char*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int SetFileAttributes (char*,int) ;
 int wcscat (char*,char*) ;
 int wcscmp (char*,char*) ;
 int wcscpy (char*,char*) ;
 int wcslen (char*) ;

__attribute__((used)) static
INT
ChangeAttribute(
    LPWSTR pszPath,
    LPWSTR pszFile,
    DWORD dwMask,
    DWORD dwAttrib,
    BOOL bRecurse,
    BOOL bDirectories)
{
    WIN32_FIND_DATAW findData;
    HANDLE hFind;
    DWORD dwAttribute;
    WCHAR szFullName[MAX_PATH];
    LPWSTR pszFileName;


    wcscpy(szFullName, pszPath);
    pszFileName = szFullName + wcslen(szFullName);


    if (bRecurse)
    {

        wcscpy(pszFileName, L"*.*");

        hFind = FindFirstFileW(szFullName, &findData);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            ErrorMessage(GetLastError(), pszFile);
            return 1;
        }

        do
        {
            if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            {
                if (!wcscmp(findData.cFileName, L".") ||
                    !wcscmp(findData.cFileName, L".."))
                    continue;

                wcscpy(pszFileName, findData.cFileName);
                wcscat(pszFileName, L"\\");

                ChangeAttribute(szFullName, pszFile, dwMask,
                                dwAttrib, bRecurse, bDirectories);
            }
        }
        while (FindNextFileW(hFind, &findData));
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

        dwAttribute = GetFileAttributes (szFullName);

        if (dwAttribute != 0xFFFFFFFF)
        {
            dwAttribute = (dwAttribute & ~dwMask) | dwAttrib;
            SetFileAttributes(szFullName, dwAttribute);
        }
    }
    while (FindNextFileW(hFind, &findData));
    FindClose(hFind);

    return 0;
}
