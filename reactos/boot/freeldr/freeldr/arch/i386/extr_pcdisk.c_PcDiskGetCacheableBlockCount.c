
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int Sectors; } ;
typedef TYPE_1__ GEOMETRY ;


 scalar_t__ DiskInt13ExtensionsSupported (int ) ;
 int PcDiskGetDriveGeometry (int ,TYPE_1__*) ;

ULONG
PcDiskGetCacheableBlockCount(UCHAR DriveNumber)
{
    GEOMETRY Geometry;



    if (DiskInt13ExtensionsSupported(DriveNumber))
    {
        return 64;
    }


    else if (!PcDiskGetDriveGeometry(DriveNumber, &Geometry))
    {
        return 1;
    }
    else
    {
        return Geometry.Sectors;
    }
}
