
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* USHORT ;
typedef int ULONG_PTR ;
typedef int ULONGLONG ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_14__ {int PacketSize; int LBABlockCount; int TransferBufferOffset; int LBAStartBlock; void* TransferBufferSegment; scalar_t__ Reserved; } ;
struct TYPE_12__ {int ah; int dl; } ;
struct TYPE_11__ {int si; } ;
struct TYPE_10__ {int ds; } ;
struct TYPE_13__ {TYPE_3__ b; TYPE_2__ w; TYPE_1__ x; } ;
typedef TYPE_4__ REGS ;
typedef scalar_t__ PVOID ;
typedef TYPE_5__* PI386_DISK_ADDRESS_PACKET ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int BIOSCALLBUFFER ;
 int BIOSCALLBUFOFFSET ;
 int BIOSCALLBUFSEGMENT ;
 int DiskError (char*,int) ;
 int DiskGetErrorCodeString (int) ;
 int DiskResetController (int ) ;
 int ERR (char*,int,int ,int ,int ,int) ;
 int FALSE ;
 scalar_t__ INT386_SUCCESS (TYPE_4__) ;
 int Int386 (int,TYPE_4__*,TYPE_4__*) ;
 int RtlZeroMemory (TYPE_5__*,int) ;
 int TRACE (char*,int ,int ,int,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN PcDiskReadLogicalSectorsLBA(UCHAR DriveNumber, ULONGLONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    REGS RegsIn, RegsOut;
    ULONG RetryCount;
    PI386_DISK_ADDRESS_PACKET Packet = (PI386_DISK_ADDRESS_PACKET)(BIOSCALLBUFFER);

    TRACE("PcDiskReadLogicalSectorsLBA() DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d Buffer: 0x%x\n", DriveNumber, SectorNumber, SectorCount, Buffer);
    ASSERT(((ULONG_PTR)Buffer) <= 0xFFFFF);


    RtlZeroMemory(Packet, sizeof(*Packet));
    Packet->PacketSize = sizeof(*Packet);
    Packet->Reserved = 0;
    Packet->LBABlockCount = (USHORT)SectorCount;
    ASSERT(Packet->LBABlockCount == SectorCount);
    Packet->TransferBufferOffset = ((ULONG_PTR)Buffer) & 0x0F;
    Packet->TransferBufferSegment = (USHORT)(((ULONG_PTR)Buffer) >> 4);
    Packet->LBAStartBlock = SectorNumber;
    RegsIn.b.ah = 0x42;
    RegsIn.b.dl = DriveNumber;
    RegsIn.x.ds = BIOSCALLBUFSEGMENT;
    RegsIn.w.si = BIOSCALLBUFOFFSET;


    for (RetryCount=0; RetryCount<3; RetryCount++)
    {
        Int386(0x13, &RegsIn, &RegsOut);


        if (INT386_SUCCESS(RegsOut))
        {
            return TRUE;
        }

        else if (RegsOut.b.ah == 0x11)
        {
            return TRUE;
        }

        else
        {
            DiskResetController(DriveNumber);
            continue;
        }
    }


    DiskError("Disk Read Failed in LBA mode", RegsOut.b.ah);
    ERR("Disk Read Failed in LBA mode: %x (%s) (DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d)\n",
        RegsOut.b.ah, DiskGetErrorCodeString(RegsOut.b.ah),
        DriveNumber, SectorNumber, SectorCount);

    return FALSE;
}
