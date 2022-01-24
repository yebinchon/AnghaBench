#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* USHORT ;
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int PacketSize; int LBABlockCount; int TransferBufferOffset; int /*<<< orphan*/  LBAStartBlock; void* TransferBufferSegment; scalar_t__ Reserved; } ;
struct TYPE_12__ {int ah; int /*<<< orphan*/  dl; } ;
struct TYPE_11__ {int /*<<< orphan*/  si; } ;
struct TYPE_10__ {int /*<<< orphan*/  ds; } ;
struct TYPE_13__ {TYPE_3__ b; TYPE_2__ w; TYPE_1__ x; } ;
typedef  TYPE_4__ REGS ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_5__* PI386_DISK_ADDRESS_PACKET ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BIOSCALLBUFFER ; 
 int /*<<< orphan*/  BIOSCALLBUFOFFSET ; 
 int /*<<< orphan*/  BIOSCALLBUFSEGMENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC9(UCHAR DriveNumber, ULONGLONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    REGS RegsIn, RegsOut;
    ULONG RetryCount;
    PI386_DISK_ADDRESS_PACKET Packet = (PI386_DISK_ADDRESS_PACKET)(BIOSCALLBUFFER);

    FUNC8("PcDiskReadLogicalSectorsLBA() DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d Buffer: 0x%x\n", DriveNumber, SectorNumber, SectorCount, Buffer);
    FUNC0(((ULONG_PTR)Buffer) <= 0xFFFFF);

    /* Setup disk address packet */
    FUNC7(Packet, sizeof(*Packet));
    Packet->PacketSize = sizeof(*Packet);
    Packet->Reserved = 0;
    Packet->LBABlockCount = (USHORT)SectorCount;
    FUNC0(Packet->LBABlockCount == SectorCount);
    Packet->TransferBufferOffset = ((ULONG_PTR)Buffer) & 0x0F;
    Packet->TransferBufferSegment = (USHORT)(((ULONG_PTR)Buffer) >> 4);
    Packet->LBAStartBlock = SectorNumber;

    /*
     * BIOS int 0x13, function 42h - IBM/MS INT 13 Extensions - EXTENDED READ
     * Return:
     * CF clear if successful
     * AH = 00h
     * CF set on error
     * AH = error code
     * Disk address packet's block count field set to the
     * number of blocks successfully transferred.
     */
    RegsIn.b.ah = 0x42;                 // Subfunction 42h
    RegsIn.b.dl = DriveNumber;          // Drive number in DL (0 - floppy, 0x80 - harddisk)
    RegsIn.x.ds = BIOSCALLBUFSEGMENT;   // DS:SI -> disk address packet
    RegsIn.w.si = BIOSCALLBUFOFFSET;

    /* Retry 3 times */
    for (RetryCount=0; RetryCount<3; RetryCount++)
    {
        FUNC6(0x13, &RegsIn, &RegsOut);

        /* If it worked return TRUE */
        if (FUNC5(RegsOut))
        {
            return TRUE;
        }
        /* If it was a corrected ECC error then the data is still good */
        else if (RegsOut.b.ah == 0x11)
        {
            return TRUE;
        }
        /* If it failed then do the next retry */
        else
        {
            FUNC3(DriveNumber);
            continue;
        }
    }

    /* If we get here then the read failed */
    FUNC1("Disk Read Failed in LBA mode", RegsOut.b.ah);
    FUNC4("Disk Read Failed in LBA mode: %x (%s) (DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d)\n",
        RegsOut.b.ah, FUNC2(RegsOut.b.ah),
        DriveNumber, SectorNumber, SectorCount);

    return FALSE;
}