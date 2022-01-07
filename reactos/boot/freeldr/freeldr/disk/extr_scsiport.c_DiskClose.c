
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DISKCONTEXT ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 int ExFreePool (int *) ;
 int * FsGetDeviceSpecific (int ) ;

__attribute__((used)) static ARC_STATUS DiskClose(ULONG FileId)
{
    DISKCONTEXT* Context = FsGetDeviceSpecific(FileId);
    ExFreePool(Context);
    return ESUCCESS;
}
