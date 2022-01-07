
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int * LPCTSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int AddBackslash (scalar_t__*) ;
 int ERROR_DIRECTORY ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetCurrentDirectory (int,scalar_t__*) ;
 int GetFileAttributes (scalar_t__*) ;
 int GetFullPathName (scalar_t__*,int,int *,int *) ;
 int GetLastError () ;
 int MAX_PATH ;
 int PrintError (int ) ;
 int TRUE ;
 int _T (char) ;
 scalar_t__* _tcsrchr (scalar_t__*,int ) ;
 int lstrcpyn (scalar_t__*,int *,int) ;

__attribute__((used)) static BOOL
GetPathOfFile(LPTSTR FilePath, LPCTSTR pszFiles)
{
    TCHAR FullPath[MAX_PATH];
    LPTSTR pch;
    DWORD attrs;

    lstrcpyn(FilePath, pszFiles, MAX_PATH);
    pch = _tcsrchr(FilePath, _T('\\'));
    if (pch != ((void*)0))
    {
        *pch = 0;
        if (!GetFullPathName(FilePath, MAX_PATH, FullPath, ((void*)0)))
        {
            PrintError(GetLastError());
            return FALSE;
        }
        lstrcpyn(FilePath, FullPath, MAX_PATH);

        attrs = GetFileAttributes(FilePath);
        if (attrs == 0xFFFFFFFF || !(attrs & FILE_ATTRIBUTE_DIRECTORY))
        {
            PrintError(ERROR_DIRECTORY);
            return FALSE;
        }
    }
    else
        GetCurrentDirectory(MAX_PATH, FilePath);

    AddBackslash(FilePath);
    return TRUE;
}
