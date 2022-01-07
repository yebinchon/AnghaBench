
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef size_t INT_PTR ;
typedef int BOOL ;


 scalar_t__ CreateDirectory (scalar_t__*,int *) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__* _tcschr (scalar_t__*,scalar_t__) ;
 int _tcslen (scalar_t__*) ;
 int _tcsncpy (scalar_t__*,scalar_t__*,size_t) ;

BOOL
MakeFullPath(TCHAR * DirPath)
{
    TCHAR path[MAX_PATH];
    TCHAR *p = DirPath;
    INT_PTR n;

    if (CreateDirectory(DirPath, ((void*)0)))
        return TRUE;
    else if (GetLastError() != ERROR_PATH_NOT_FOUND)
        return FALSE;


    if (p[0] && p[1] == _T(':'))
        p += 2;
    while (*p == _T('\\'))
        p++;
    do
    {
        p = _tcschr(p, _T('\\'));
        n = p ? p++ - DirPath : _tcslen(DirPath);
        _tcsncpy(path, DirPath, n);
        path[n] = _T('\0');
        if ( !CreateDirectory(path, ((void*)0)) &&
            (GetLastError() != ERROR_ALREADY_EXISTS))
        {
            return FALSE;
        }
    } while (p != ((void*)0));

    return TRUE;
}
