
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MCI_SR; } ;


 TYPE_1__* AT91C_BASE_MCI ;
 int volatile AT91C_MCI_NOTBUSY ;

void AT91F_MCIDeviceWaitReady(unsigned int timeout)
{
 volatile int status;

 do
 {
  status = AT91C_BASE_MCI->MCI_SR;
  timeout--;
 }
 while( !(status & AT91C_MCI_NOTBUSY) && (timeout>0) );
}
