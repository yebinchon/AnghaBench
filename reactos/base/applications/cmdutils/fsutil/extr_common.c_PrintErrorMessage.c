
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageW (int,int *,int,int ,int *,int ,int *) ;
 int LocalFree (int *) ;
 int _T (char*) ;
 int _ftprintf (int ,int ,int) ;
 int stderr ;

int PrintErrorMessage(DWORD Error)
{
    TCHAR * String;


    if (FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                       ((void*)0), Error, 0, (TCHAR *)&String, 0, ((void*)0)) != 0)
    {

        _ftprintf(stderr, _T("Error: %s\n"), String);
        LocalFree(String);
    }
    else
    {

        _ftprintf(stderr, _T("Error: %d\n"), Error);
    }

    return Error;
}
