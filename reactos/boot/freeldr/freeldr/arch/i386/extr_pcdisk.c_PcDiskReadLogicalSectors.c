
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int PVOID ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ DiskInt13ExtensionsSupported (int) ;
 scalar_t__ PcDiskReadLogicalSectorsCHS (int,int ,int ,int ) ;
 scalar_t__ PcDiskReadLogicalSectorsLBA (int,int ,int ,int ) ;
 int TRACE (char*,int,char*,...) ;
 scalar_t__ TRUE ;

BOOLEAN PcDiskReadLogicalSectors(UCHAR DriveNumber, ULONGLONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    BOOLEAN ExtensionsSupported;

    TRACE("PcDiskReadLogicalSectors() DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d Buffer: 0x%x\n",
          DriveNumber, SectorNumber, SectorCount, Buffer);






    ExtensionsSupported = DiskInt13ExtensionsSupported(DriveNumber);

    if ((DriveNumber >= 0x80) && ExtensionsSupported)
    {
        TRACE("Using Int 13 Extensions for read. DiskInt13ExtensionsSupported(%d) = %s\n", DriveNumber, ExtensionsSupported ? "TRUE" : "FALSE");


        return PcDiskReadLogicalSectorsLBA(DriveNumber, SectorNumber, SectorCount, Buffer);
    }
    else
    {

        return PcDiskReadLogicalSectorsCHS(DriveNumber, SectorNumber, SectorCount, Buffer);
    }

    return TRUE;
}
