
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PFAT_FILE_INFO ;
typedef scalar_t__ BOOLEAN ;
typedef int ARC_STATUS ;


 int EIO ;
 int ESUCCESS ;
 scalar_t__ FatReadFile (int ,int ,int *,int *) ;
 int FsGetDeviceSpecific (int ) ;

ARC_STATUS FatRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    PFAT_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);
    BOOLEAN Success;




    Success = FatReadFile(FileHandle, N, Count, Buffer);




    if (Success)
        return ESUCCESS;
    else
        return EIO;
}
