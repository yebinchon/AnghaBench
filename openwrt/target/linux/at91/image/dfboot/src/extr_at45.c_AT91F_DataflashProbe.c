
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* command; } ;
typedef TYPE_1__* AT91PS_DataflashDesc ;


 int AT91F_DataFlashGetStatus (TYPE_1__*) ;
 int AT91F_SpiEnable (int) ;

int AT91F_DataflashProbe(int cs, AT91PS_DataflashDesc pDesc)
{
 AT91F_SpiEnable(cs);
    AT91F_DataFlashGetStatus(pDesc);
    return ((pDesc->command[1] == 0xFF)? 0: (pDesc->command[1] & 0x3C));
}
