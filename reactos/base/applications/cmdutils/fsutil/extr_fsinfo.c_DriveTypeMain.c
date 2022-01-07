
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TCHAR ;
 int GetDriveType (int const*) ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
DriveTypeMain(int argc, const TCHAR *argv[])
{
    UINT Type;


    if (argc < 2)
    {
        _ftprintf(stderr, _T("Usage: fsutil fsinfo drivetype <volume>\n"));
        _ftprintf(stderr, _T("\tFor example: fsutil fsinfo drivetype c:\n"));
        return 1;
    }


    Type = GetDriveType(argv[1]);
    switch (Type)
    {
        case 128:
            _ftprintf(stdout, _T("%s - unknown drive type\n"), argv[1]);
            break;

        case 132:
            _ftprintf(stdout, _T("%s - not a root directory\n"), argv[1]);
            break;

        case 129:
            _ftprintf(stdout, _T("%s - removable drive\n"), argv[1]);
            break;

        case 133:
            _ftprintf(stdout, _T("%s - fixed drive\n"), argv[1]);
            break;

        case 130:
            _ftprintf(stdout, _T("%s - remote or network drive\n"), argv[1]);
            break;

        case 134:
            _ftprintf(stdout, _T("%s - CD-ROM drive\n"), argv[1]);
            break;

        case 131:
            _ftprintf(stdout, _T("%s - RAM disk drive\n"), argv[1]);
            break;
    }

    return 0;
}
