
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_6__ {int ah; int dl; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
typedef TYPE_2__ REGS ;
typedef int BOOLEAN ;


 int INT386_SUCCESS (TYPE_2__) ;
 int Int386 (int,TYPE_2__*,TYPE_2__*) ;
 int WARN (char*,int ) ;

BOOLEAN DiskResetController(UCHAR DriveNumber)
{
    REGS RegsIn, RegsOut;

    WARN("DiskResetController(0x%x) DISK OPERATION FAILED -- RESETTING CONTROLLER\n", DriveNumber);
    RegsIn.b.ah = 0x00;
    RegsIn.b.dl = DriveNumber;


    Int386(0x13, &RegsIn, &RegsOut);

    return INT386_SUCCESS(RegsOut);
}
