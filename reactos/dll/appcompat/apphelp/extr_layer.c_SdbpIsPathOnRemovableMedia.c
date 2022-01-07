
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ ULONG ;
typedef int* PCWSTR ;
typedef int BOOL ;


 scalar_t__ DRIVE_CDROM ;
 scalar_t__ DRIVE_REMOVABLE ;
 int FALSE ;
 scalar_t__ GetDriveTypeW (char*) ;
 int SHIM_ERR (char*) ;
 int SHIM_INFO (char*,int*) ;
 int UNICODE_NULL ;

BOOL SdbpIsPathOnRemovableMedia(PCWSTR Path)
{
    WCHAR tmp[] = { 'A',':','\\',0 };
    ULONG type;
    if (!Path || Path[0] == UNICODE_NULL)
    {
        SHIM_ERR("Invalid argument\n");
        return FALSE;
    }
    switch (Path[1])
    {
    case L':':
        break;
    case L'\\':
        SHIM_INFO("\"%S\" is a network path.\n", Path);
        return FALSE;
    default:
        SHIM_INFO("\"%S\" not a full path we can operate on.\n", Path);
        return FALSE;
    }
    tmp[0] = Path[0];
    type = GetDriveTypeW(tmp);

    return type == DRIVE_REMOVABLE || type == DRIVE_CDROM;
}
