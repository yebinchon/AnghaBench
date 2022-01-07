
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int TCHAR ;


 int GetDiskFreeSpaceEx (int const*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int GetLastError () ;
 int PrintErrorMessage (int ) ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
DiskFreeMain(int argc, const TCHAR *argv[])
{
    ULARGE_INTEGER FreeAvail, TotalNumber, TotalNumberFree;


    if (argc < 2)
    {
        _ftprintf(stderr, _T("Usage: fsutil volume diskfree <volume path>\n"));
        _ftprintf(stderr, _T("\tFor example: fsutil volume diskfree c:\n"));
        return 1;
    }

    if (!GetDiskFreeSpaceEx(argv[1], &FreeAvail, &TotalNumber, &TotalNumberFree))
    {
        PrintErrorMessage(GetLastError());
        return 1;
    }

    _ftprintf(stdout, _T("Total free bytes\t\t: %I64i\n"), TotalNumberFree.QuadPart);
    _ftprintf(stdout, _T("Total bytes\t\t\t: %I64i\n"), TotalNumber.QuadPart);
    _ftprintf(stdout, _T("Total free available bytes\t: %I64i\n"), FreeAvail.QuadPart);

    return 0;
}
