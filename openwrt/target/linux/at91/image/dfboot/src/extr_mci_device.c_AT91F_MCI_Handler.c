
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MCI_SR; int MCI_IMR; } ;


 TYPE_1__* AT91C_BASE_MCI ;
 int AT91F_MCI_Device_Handler (int *,int) ;
 int MCI_Device ;

void AT91F_MCI_Handler(void)
{
 int status;

 status = ( AT91C_BASE_MCI->MCI_SR & AT91C_BASE_MCI->MCI_IMR );

 AT91F_MCI_Device_Handler(&MCI_Device,status);
}
