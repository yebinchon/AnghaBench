
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int HardwareMechanism; int MinorRevision; int MajorRevision; scalar_t__ NoBuses; } ;
struct TYPE_10__ {int ah; int al; int bl; int bh; scalar_t__ cl; } ;
struct TYPE_9__ {char edx; } ;
struct TYPE_11__ {TYPE_2__ b; TYPE_1__ d; } ;
typedef TYPE_3__ REGS ;
typedef TYPE_4__* PPCI_REGISTRY_INFO ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int TRACE (char*,...) ;
 int TRUE ;

BOOLEAN
PcFindPciBios(PPCI_REGISTRY_INFO BusData)
{
    REGS RegsIn;
    REGS RegsOut;

    RegsIn.b.ah = 0xB1;
    RegsIn.b.al = 0x01;

    Int386(0x1A, &RegsIn, &RegsOut);

    if (INT386_SUCCESS(RegsOut) &&
        (RegsOut.d.edx == ' ICP') &&
        (RegsOut.b.ah == 0))
    {
        TRACE("Found PCI bios\n");

        TRACE("AL: %x\n", RegsOut.b.al);
        TRACE("BH: %x\n", RegsOut.b.bh);
        TRACE("BL: %x\n", RegsOut.b.bl);
        TRACE("CL: %x\n", RegsOut.b.cl);

        BusData->NoBuses = RegsOut.b.cl + 1;
        BusData->MajorRevision = RegsOut.b.bh;
        BusData->MinorRevision = RegsOut.b.bl;
        BusData->HardwareMechanism = RegsOut.b.al;

        return TRUE;
    }

    TRACE("No PCI bios found\n");

    return FALSE;
}
