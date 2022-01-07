
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PISO_FILE_INFO ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 int FrLdrTempFree (int ,int ) ;
 int FsGetDeviceSpecific (int ) ;
 int TAG_ISO_FILE ;

ARC_STATUS IsoClose(ULONG FileId)
{
    PISO_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);
    FrLdrTempFree(FileHandle, TAG_ISO_FILE);
    return ESUCCESS;
}
