
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ DeviceIoControl (scalar_t__,int ,int *,int ,int *,int ,int *,int *) ;
 scalar_t__ FALSE ;
 int FSCTL_MARK_VOLUME_DIRTY ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ OpenVolume (int const*,scalar_t__,scalar_t__) ;
 int PrintErrorMessage (int ) ;
 int _T (char*) ;
 int _ftprintf (int ,int ,...) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
SetMain(int argc, const TCHAR *argv[])
{
    HANDLE Volume;
    DWORD BytesRead;


    if (argc < 2)
    {
        _ftprintf(stderr, _T("Usage: fsutil dirty set <volume>\n"));
        _ftprintf(stderr, _T("\tFor example: fsutil dirty set c:\n"));
        return 1;
    }


    Volume = OpenVolume(argv[1], FALSE, FALSE);
    if (Volume == INVALID_HANDLE_VALUE)
    {
        return 1;
    }


    if (DeviceIoControl(Volume, FSCTL_MARK_VOLUME_DIRTY, ((void*)0), 0, ((void*)0), 0, &BytesRead, ((void*)0)) == FALSE)
    {
        PrintErrorMessage(GetLastError());
        CloseHandle(Volume);
        return 1;
    }

    CloseHandle(Volume);


    _ftprintf(stdout, _T("The %s volume is now marked as dirty\n"), argv[1]);

    return 0;
}
