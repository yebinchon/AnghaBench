
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NoBuses; int MajorRevision; int HardwareMechanism; scalar_t__ MinorRevision; } ;
typedef TYPE_1__* PPCI_REGISTRY_INFO ;
typedef int BOOLEAN ;


 int TRUE ;

BOOLEAN
XboxFindPciBios(PPCI_REGISTRY_INFO BusData)
{


    BusData->NoBuses = 2;
    BusData->MajorRevision = 1;
    BusData->MinorRevision = 0;
    BusData->HardwareMechanism = 1;
    return TRUE;
}
