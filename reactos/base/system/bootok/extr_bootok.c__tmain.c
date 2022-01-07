
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int GetLastError () ;
 int NotifyBootConfigStatus (int ) ;
 int TRUE ;
 int UNREFERENCED_PARAMETER (int) ;
 int _T (char*) ;
 int _tprintf (int ,int ) ;

int
_tmain(int argc, TCHAR *argv[])
{
    UNREFERENCED_PARAMETER(argc);
    UNREFERENCED_PARAMETER(argv);

    if (!NotifyBootConfigStatus(TRUE))
    {
        _tprintf(_T("NotifyBootConfigStatus failed! (Error: %lu)\n"),
                 GetLastError());
    }

    return 0;
}
