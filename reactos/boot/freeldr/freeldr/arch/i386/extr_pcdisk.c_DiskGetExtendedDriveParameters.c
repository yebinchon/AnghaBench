
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG_PTR ;
typedef int UCHAR ;
struct TYPE_10__ {int si; } ;
struct TYPE_9__ {int ds; } ;
struct TYPE_8__ {int ah; int dl; } ;
struct TYPE_11__ {TYPE_3__ w; TYPE_2__ x; TYPE_1__ b; } ;
typedef TYPE_4__ REGS ;
typedef int PVOID ;
typedef int* PUSHORT ;
typedef int* PULONG ;
typedef int* PUCHAR ;
typedef int BOOLEAN ;


 scalar_t__ BIOSCALLBUFFER ;
 int BIOSCALLBUFOFFSET ;
 int BIOSCALLBUFSEGMENT ;
 int DiskInt13ExtensionsSupported (int ) ;
 int FALSE ;
 int INT386_SUCCESS (TYPE_4__) ;
 int Int386 (int,TYPE_4__*,TYPE_4__*) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int memcpy (int ,int*,int) ;

BOOLEAN DiskGetExtendedDriveParameters(UCHAR DriveNumber, PVOID Buffer, USHORT BufferSize)
{
    REGS RegsIn, RegsOut;
    PUSHORT Ptr = (PUSHORT)(BIOSCALLBUFFER);

    TRACE("DiskGetExtendedDriveParameters()\n");

    if (!DiskInt13ExtensionsSupported(DriveNumber))
        return FALSE;


    *Ptr = BufferSize;
    RegsIn.b.ah = 0x48;
    RegsIn.b.dl = DriveNumber;
    RegsIn.x.ds = BIOSCALLBUFSEGMENT;
    RegsIn.w.si = BIOSCALLBUFOFFSET;


    Int386(0x13, &RegsIn, &RegsOut);
    if (!INT386_SUCCESS(RegsOut))
        return FALSE;

    memcpy(Buffer, Ptr, BufferSize);
    return TRUE;
}
