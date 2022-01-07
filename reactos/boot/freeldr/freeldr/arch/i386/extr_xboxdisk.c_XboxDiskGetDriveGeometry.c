
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {int LogicalCyls; int LogicalHeads; int SectorsPerTrack; int Capabilities; int BytesPerSector; } ;
struct TYPE_4__ {int Cylinders; int Heads; int Sectors; int BytesPerSector; } ;
typedef int PUCHAR ;
typedef TYPE_1__* PGEOMETRY ;
typedef TYPE_2__ IDE_DRIVE_IDENTIFY ;
typedef scalar_t__ BOOLEAN ;


 int ERR (char*) ;
 scalar_t__ FALSE ;
 int IDE_CMD_IDENT_ATAPI_DRV ;
 int IDE_CMD_IDENT_ATA_DRV ;
 int IDE_DH_DRV0 ;
 int IDE_DH_DRV1 ;
 int IDE_DRID_LBA_SUPPORTED ;
 int TRACE (char*,int) ;
 scalar_t__ TRUE ;
 int XBOX_IDE_COMMAND_PORT ;
 int XBOX_IDE_CONTROL_PORT ;
 int XboxDiskPolledRead (int ,int ,int ,int,int ,int ,int ,int ,int ,int ) ;

BOOLEAN
XboxDiskGetDriveGeometry(UCHAR DriveNumber, PGEOMETRY Geometry)
{
    IDE_DRIVE_IDENTIFY DrvParms;
    ULONG i;
    BOOLEAN Atapi;

    Atapi = FALSE;

    if (!XboxDiskPolledRead(XBOX_IDE_COMMAND_PORT,
                            XBOX_IDE_CONTROL_PORT,
                            0,
                            1,
                            0,
                            0,
                            0,
                            ((DriveNumber & 0x0f) == 0 ? IDE_DH_DRV0 : IDE_DH_DRV1),
                            (Atapi ? IDE_CMD_IDENT_ATAPI_DRV : IDE_CMD_IDENT_ATA_DRV),
                            (PUCHAR) &DrvParms))
    {
        ERR("XboxDiskPolledRead() failed\n");
        return FALSE;
    }

    Geometry->Cylinders = DrvParms.LogicalCyls;
    Geometry->Heads = DrvParms.LogicalHeads;
    Geometry->Sectors = DrvParms.SectorsPerTrack;

    if (!Atapi && (DrvParms.Capabilities & IDE_DRID_LBA_SUPPORTED) != 0)
    {

        Geometry->BytesPerSector = 512;
    }
    else
    {
        TRACE("BytesPerSector %d\n", DrvParms.BytesPerSector);
        if (DrvParms.BytesPerSector == 0)
        {
            Geometry->BytesPerSector = 512;
        }
        else
        {
            for (i = 1 << 15; i; i /= 2)
            {
                if ((DrvParms.BytesPerSector & i) != 0)
                {
                    Geometry->BytesPerSector = i;
                    break;
                }
            }
        }
    }
    TRACE("Cylinders %d\n", Geometry->Cylinders);
    TRACE("Heads %d\n", Geometry->Heads);
    TRACE("Sectors %d\n", Geometry->Sectors);
    TRACE("BytesPerSector %d\n", Geometry->BytesPerSector);

    return TRUE;
}
