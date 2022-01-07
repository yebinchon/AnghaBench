
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pRxPacket; } ;
struct TYPE_3__ {int (* WlanInterruptDisable ) () ;} ;


 TYPE_2__ sSpiInformation ;
 int stub1 () ;
 TYPE_1__ tSLInformation ;

void SpiClose(void)
{
    if (sSpiInformation.pRxPacket) {
        sSpiInformation.pRxPacket = 0;
    }

    tSLInformation.WlanInterruptDisable();


}
