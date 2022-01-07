
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TCHAR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ CreateFile (int*,int ,int,int *,int ,int ,int *) ;
 scalar_t__ DRIVE_REMOTE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ GetDriveType (int const*) ;
 int GetLastError () ;
 int GetVolumeInformation (int*,int *,int ,int *,int *,int *,int*,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int PATH_MAX ;
 int PrintErrorMessage (int ) ;
 int _T (char*) ;
 int _ftprintf (int ,int ) ;
 int _stprintf (int*,int ,int const*) ;
 scalar_t__ _tcscmp (int*,int ) ;
 int stderr ;

HANDLE OpenVolume(const TCHAR * Volume,
                  BOOLEAN AllowRemote,
                  BOOLEAN NtfsOnly)
{
    UINT Type;
    HANDLE hVolume;
    TCHAR VolumeID[PATH_MAX];


    if (!AllowRemote && Volume[1] == L':')
    {
        Type = GetDriveType(Volume);
        if (Type == DRIVE_REMOTE)
        {
            _ftprintf(stderr, _T("FSUTIL needs a local device\n"));
            return INVALID_HANDLE_VALUE;
        }
    }


    if (NtfsOnly)
    {
        TCHAR FileSystem[MAX_PATH + 1];

        _stprintf(VolumeID, _T("\\\\.\\%s\\"), Volume);
        if (!GetVolumeInformation(VolumeID, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), FileSystem, MAX_PATH + 1))
        {
            PrintErrorMessage(GetLastError());
            return INVALID_HANDLE_VALUE;
        }

        if (_tcscmp(FileSystem, _T("NTFS")) != 0)
        {
            _ftprintf(stderr, _T("FSUTIL needs a NTFS device\n"));
            return INVALID_HANDLE_VALUE;
        }
    }


    _stprintf(VolumeID, _T("\\\\.\\%s"), Volume);


    hVolume = CreateFile(VolumeID, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE,
                         ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hVolume == INVALID_HANDLE_VALUE)
    {
        PrintErrorMessage(GetLastError());
        return INVALID_HANDLE_VALUE;
    }

    return hVolume;
}
