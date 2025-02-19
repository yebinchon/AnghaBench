
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int es; } ;
struct TYPE_7__ {int eax; } ;
struct TYPE_9__ {TYPE_2__ w; TYPE_1__ d; } ;
typedef TYPE_3__ REGS ;
typedef int* PULONG ;


 scalar_t__ INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int WARN (char*) ;

VOID
PcGetExtendedBIOSData(PULONG ExtendedBIOSDataArea, PULONG ExtendedBIOSDataSize)
{
    REGS BiosRegs;


    BiosRegs.d.eax = 0xC100;
    Int386(0x15, &BiosRegs, &BiosRegs);
    if (INT386_SUCCESS(BiosRegs))
    {
        *ExtendedBIOSDataArea = BiosRegs.w.es << 4;
        *ExtendedBIOSDataSize = 1024;
    }
    else
    {
        WARN("Int 15h AH=C1h call failed\n");
        *ExtendedBIOSDataArea = 0;
        *ExtendedBIOSDataSize = 0;
    }
}
