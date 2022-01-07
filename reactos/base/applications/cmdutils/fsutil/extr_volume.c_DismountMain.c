
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TCHAR ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int ,int *,int ,int *,int *) ;
 scalar_t__ FALSE ;
 int FSCTL_DISMOUNT_VOLUME ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ LockOrUnlockVolume (scalar_t__,scalar_t__) ;
 scalar_t__ OpenVolume (int const*,scalar_t__,scalar_t__) ;
 int PrintErrorMessage (int ) ;
 scalar_t__ TRUE ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
DismountMain(int argc, const TCHAR *argv[])
{
    HANDLE Volume;
    ULONG BytesRead;


    if (argc < 2)
    {
        _ftprintf(stderr, _T("Usage: fsutil volume dismount <volume>\n"));
        _ftprintf(stderr, _T("\tFor example: fsutil volume dismount d:\n"));
        return 1;
    }


    Volume = OpenVolume(argv[1], FALSE, FALSE);
    if (Volume == INVALID_HANDLE_VALUE)
    {
        return 1;
    }


    if (LockOrUnlockVolume(Volume, TRUE))
    {
        CloseHandle(Volume);
        return 1;
    }


    if (DeviceIoControl(Volume, FSCTL_DISMOUNT_VOLUME, ((void*)0), 0, ((void*)0),
                        0, &BytesRead, ((void*)0)) == FALSE)
    {
        PrintErrorMessage(GetLastError());
        LockOrUnlockVolume(Volume, FALSE);
        CloseHandle(Volume);
        return 1;
    }


    LockOrUnlockVolume(Volume, FALSE);
    CloseHandle(Volume);

    _ftprintf(stdout, _T("The %s volume has been dismounted\n"), argv[1]);

    return 0;
}
