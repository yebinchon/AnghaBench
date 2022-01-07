
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_15__ {int Size; int Cylinders; int SectorsPerTrack; int BytesPerSector; scalar_t__ Heads; } ;
struct TYPE_14__ {int Cylinders; int Sectors; int BytesPerSector; scalar_t__ Heads; } ;
struct TYPE_12__ {int ah; int cl; scalar_t__ dh; scalar_t__ ch; int dl; } ;
struct TYPE_11__ {int es; int di; } ;
struct TYPE_13__ {TYPE_2__ b; TYPE_1__ w; } ;
typedef TYPE_3__ REGS ;
typedef TYPE_4__* PGEOMETRY ;
typedef int ExtGeometry ;
typedef TYPE_5__ EXTENDED_GEOMETRY ;
typedef int BOOLEAN ;


 scalar_t__ DiskGetExtendedDriveParameters (int ,TYPE_5__*,int) ;
 int FALSE ;
 int INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int TRACE (char*) ;
 int TRUE ;

BOOLEAN
PcDiskGetDriveGeometry(UCHAR DriveNumber, PGEOMETRY Geometry)
{
    EXTENDED_GEOMETRY ExtGeometry;
    REGS RegsIn, RegsOut;
    ULONG Cylinders;

    TRACE("DiskGetDriveGeometry()\n");


    ExtGeometry.Size = sizeof(ExtGeometry);
    if (DiskGetExtendedDriveParameters(DriveNumber, &ExtGeometry, ExtGeometry.Size))
    {
        Geometry->Cylinders = ExtGeometry.Cylinders;
        Geometry->Heads = ExtGeometry.Heads;
        Geometry->Sectors = ExtGeometry.SectorsPerTrack;
        Geometry->BytesPerSector = ExtGeometry.BytesPerSector;
        return TRUE;
    }
    RegsIn.b.ah = 0x08;
    RegsIn.b.dl = DriveNumber;
    RegsIn.w.es = 0x0000;
    RegsIn.w.di = 0x0000;


    Int386(0x13, &RegsIn, &RegsOut);
    if (!INT386_SUCCESS(RegsOut))
        return FALSE;

    Cylinders = (RegsOut.b.cl & 0xC0) << 2;
    Cylinders += RegsOut.b.ch;
    Cylinders++;
    Geometry->Cylinders = Cylinders;
    Geometry->Heads = RegsOut.b.dh + 1;
    Geometry->Sectors = RegsOut.b.cl & 0x3F;
    Geometry->BytesPerSector = 512;

    return TRUE;
}
