
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pbtrfs_file_info ;
typedef int ULONG ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 int FrLdrTempFree (int ,int ) ;
 int FsGetDeviceSpecific (int ) ;
 int TAG_BTRFS_FILE ;
 int TRACE (char*,int ) ;

ARC_STATUS BtrFsClose(ULONG FileId)
{
    pbtrfs_file_info phandle = FsGetDeviceSpecific(FileId);
    TRACE("BtrFsClose %lu\n", FileId);

    FrLdrTempFree(phandle, TAG_BTRFS_FILE);
    return ESUCCESS;
}
