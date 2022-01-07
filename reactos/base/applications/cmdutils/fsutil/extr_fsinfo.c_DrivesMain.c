
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TCHAR ;
typedef int DWORD ;


 int GetLastError () ;
 int GetLogicalDrives () ;
 int PrintErrorMessage (int ) ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stdout ;

__attribute__((used)) static int
DrivesMain(int argc, const TCHAR *argv[])
{
    UINT i;
    DWORD Drives;


    Drives = GetLogicalDrives();
    if (Drives == 0)
    {
        PrintErrorMessage(GetLastError());
        return 1;
    }


    _ftprintf(stdout, _T("Drives:"));
    for (i = 0; i < 26; i++)
    {
        if (Drives & (1 << i))
        {
            _ftprintf(stdout, _T(" %c:\\"), 'A' + i);
        }
    }
    _ftprintf(stdout, _T("\n"));

    return 0;
}
