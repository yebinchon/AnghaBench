
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int ULONG_PTR ;
typedef int ULONGLONG ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_12__ {int Sectors; int Heads; int Cylinders; int BytesPerSector; } ;
struct TYPE_10__ {int ah; int al; int ch; int cl; int dh; int dl; } ;
struct TYPE_9__ {int bx; scalar_t__ es; } ;
struct TYPE_11__ {TYPE_2__ b; TYPE_1__ w; } ;
typedef TYPE_3__ REGS ;
typedef scalar_t__ PVOID ;
typedef TYPE_4__ GEOMETRY ;
typedef int BOOLEAN ;


 int DiskError (char*,int) ;
 int DiskGetErrorCodeString (int) ;
 int DiskResetController (int) ;
 int ERR (char*,int,int ,int,int,int) ;
 int FALSE ;
 scalar_t__ INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int PcDiskGetDriveGeometry (int,TYPE_4__*) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN PcDiskReadLogicalSectorsCHS(UCHAR DriveNumber, ULONGLONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    UCHAR PhysicalSector;
    UCHAR PhysicalHead;
    ULONG PhysicalTrack;
    GEOMETRY DriveGeometry;
    ULONG NumberOfSectorsToRead;
    REGS RegsIn, RegsOut;
    ULONG RetryCount;

    TRACE("PcDiskReadLogicalSectorsCHS()\n");





    if (!PcDiskGetDriveGeometry(DriveNumber, &DriveGeometry) ||
        DriveGeometry.Sectors == 0 || DriveGeometry.Heads == 0)
    {
        return FALSE;
    }

    while (SectorCount)
    {




        PhysicalSector = 1 + (UCHAR)(SectorNumber % DriveGeometry.Sectors);
        PhysicalHead = (UCHAR)((SectorNumber / DriveGeometry.Sectors) % DriveGeometry.Heads);
        PhysicalTrack = (ULONG)((SectorNumber / DriveGeometry.Sectors) / DriveGeometry.Heads);


        if (PhysicalSector > 1)
        {
            if (SectorCount >= (DriveGeometry.Sectors - (PhysicalSector - 1)))
                NumberOfSectorsToRead = (DriveGeometry.Sectors - (PhysicalSector - 1));
            else
                NumberOfSectorsToRead = SectorCount;
        }
        else
        {
            if (SectorCount >= DriveGeometry.Sectors)
                NumberOfSectorsToRead = DriveGeometry.Sectors;
            else
                NumberOfSectorsToRead = SectorCount;
        }


        if ((PhysicalHead >= DriveGeometry.Heads) ||
            (PhysicalTrack >= DriveGeometry.Cylinders) ||
            ((NumberOfSectorsToRead + PhysicalSector) > (DriveGeometry.Sectors + 1)) ||
            (PhysicalSector > DriveGeometry.Sectors))
        {
            DiskError("Disk read exceeds drive geometry limits.", 0);
            return FALSE;
        }
        RegsIn.b.ah = 0x02;
        RegsIn.b.al = (UCHAR)NumberOfSectorsToRead;
        RegsIn.b.ch = (PhysicalTrack & 0xFF);
        RegsIn.b.cl = (UCHAR)(PhysicalSector + ((PhysicalTrack & 0x300) >> 2));
        RegsIn.b.dh = PhysicalHead;
        RegsIn.b.dl = DriveNumber;
        RegsIn.w.es = (USHORT)(((ULONG_PTR)Buffer) >> 4);
        RegsIn.w.bx = ((ULONG_PTR)Buffer) & 0x0F;


        for (RetryCount=0; RetryCount<3; RetryCount++)
        {
            Int386(0x13, &RegsIn, &RegsOut);


            if (INT386_SUCCESS(RegsOut))
            {
                break;
            }

            else if (RegsOut.b.ah == 0x11)
            {
                break;
            }

            else
            {
                DiskResetController(DriveNumber);
                continue;
            }
        }


        if (RetryCount >= 3)
        {
            DiskError("Disk Read Failed in CHS mode, after retrying 3 times", RegsOut.b.ah);
            ERR("Disk Read Failed in CHS mode, after retrying 3 times: %x (%s) (DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d)\n",
                RegsOut.b.ah, DiskGetErrorCodeString(RegsOut.b.ah),
                DriveNumber, SectorNumber, SectorCount);
            return FALSE;
        }







        Buffer = (PVOID)((ULONG_PTR)Buffer + (NumberOfSectorsToRead * DriveGeometry.BytesPerSector));
        SectorCount -= NumberOfSectorsToRead;
        SectorNumber += NumberOfSectorsToRead;
    }

    return TRUE;
}
