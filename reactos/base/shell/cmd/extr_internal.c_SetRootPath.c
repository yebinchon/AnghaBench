
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int BOOL ;


 int ConErrFormatMessage (int ) ;
 int FALSE ;
 scalar_t__ GetFullPathName (int *,int,int *,int *) ;
 int GetLastError () ;
 int GetPathCase (int *,int *) ;
 int MAX_PATH ;
 int SetCurrentDirectory (int *) ;
 int StripQuotes (int *) ;
 int TRUE ;
 scalar_t__ _tchdir (int *) ;
 scalar_t__ _tcsncicmp (int *,int *,int) ;
 int nErrorLevel ;

BOOL SetRootPath(TCHAR *oldpath, TCHAR *InPath)
{
    TCHAR OutPath[MAX_PATH];
    TCHAR OutPathTemp[MAX_PATH];

    StripQuotes(InPath);


    if (GetFullPathName(InPath, MAX_PATH, OutPathTemp, ((void*)0)) == 0)
        goto Fail;



    GetPathCase(OutPathTemp, OutPath);



    if (_tchdir(OutPath) != 0)
        goto Fail;


    if (oldpath != ((void*)0) && _tcsncicmp(OutPath, oldpath, 2) != 0)
        SetCurrentDirectory(oldpath);

    return TRUE;

Fail:
    ConErrFormatMessage(GetLastError());
    nErrorLevel = 1;
    return FALSE;
}
