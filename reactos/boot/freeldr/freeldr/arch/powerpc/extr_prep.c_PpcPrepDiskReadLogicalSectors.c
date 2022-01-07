
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONGLONG ;
typedef int ULONG ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PCHAR ;
typedef int BOOLEAN ;


 int TRUE ;
 int ide1_desc ;
 int ide_read (int *,scalar_t__,int) ;
 int ide_seek (int *,scalar_t__,int ) ;

BOOLEAN PpcPrepDiskReadLogicalSectors
( ULONG DriveNumber, ULONGLONG SectorNumber,
  ULONG SectorCount, PVOID Buffer ) {
    int secct;

    for(secct = 0; secct < SectorCount; secct++)
    {
    ide_seek(&ide1_desc, SectorNumber + secct, 0);
    ide_read(&ide1_desc, ((PCHAR)Buffer) + secct * 512, 512);
    }

    return TRUE;
}
