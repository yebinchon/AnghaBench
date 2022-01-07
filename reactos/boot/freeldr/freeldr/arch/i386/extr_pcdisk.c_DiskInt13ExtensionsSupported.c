
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_8__ {int bx; int cx; } ;
struct TYPE_7__ {int ah; int dl; } ;
struct TYPE_9__ {TYPE_2__ w; TYPE_1__ b; } ;
typedef TYPE_3__ REGS ;
typedef scalar_t__ BOOLEAN ;


 int DbgPrint (char*,int,int) ;
 scalar_t__ FALSE ;
 int INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOLEAN DiskInt13ExtensionsSupported(UCHAR DriveNumber)
{
    static UCHAR LastDriveNumber = 0xff;
    static BOOLEAN LastSupported;
    REGS RegsIn, RegsOut;

    TRACE("DiskInt13ExtensionsSupported()\n");

    if (DriveNumber == LastDriveNumber)
    {
        TRACE("Using cached value %s for drive 0x%x\n",
              LastSupported ? "TRUE" : "FALSE", DriveNumber);
        return LastSupported;
    }
    if (DriveNumber >= 0x8A)
    {
        LastSupported = TRUE;
        return TRUE;
    }

    LastDriveNumber = DriveNumber;
    RegsIn.b.ah = 0x41;
    RegsIn.w.bx = 0x55AA;
    RegsIn.b.dl = DriveNumber;


    Int386(0x13, &RegsIn, &RegsOut);

    if (!INT386_SUCCESS(RegsOut))
    {

        LastSupported = FALSE;
        return FALSE;
    }

    if (RegsOut.w.bx != 0xAA55)
    {

        LastSupported = FALSE;
        return FALSE;
    }

    if (!(RegsOut.w.cx & 0x0001))
    {




        DbgPrint("Suspicious API subset support bitmap 0x%x on device 0x%lx\n",
                 RegsOut.w.cx, DriveNumber);
        LastSupported = FALSE;
        return FALSE;
    }

    LastSupported = TRUE;
    return TRUE;
}
