
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* ReadWlanInterruptPin ) () ;scalar_t__ pucTxCommandBuffer; int (* WriteWlanPin ) (int ) ;} ;


 int SpiClose () ;
 int WLAN_DISABLE ;
 int stub1 (int ) ;
 scalar_t__ stub2 () ;
 TYPE_1__ tSLInformation ;

void wlan_stop(void)
{

 tSLInformation.WriteWlanPin( WLAN_DISABLE );


 while(tSLInformation.ReadWlanInterruptPin() == 0)
 {
 }


 if (tSLInformation.pucTxCommandBuffer)
 {
  tSLInformation.pucTxCommandBuffer = 0;
 }

 SpiClose();
}
