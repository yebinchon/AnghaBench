
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AT91PS_USART ;


 int AT91C_MASTER_CLOCK ;
 int AT91C_US_ASYNC_MODE ;
 int AT91F_DBGU_CfgPIO () ;
 int AT91F_US0_CfgPIO () ;
 int AT91F_US0_CfgPMC () ;
 int AT91F_US_Configure (int ,int ,int ,int,int ) ;
 int AT91F_US_EnableRx (int ) ;
 int AT91F_US_EnableTx (int ) ;
 int AT91F_US_ResetRx (int ) ;
 int AT91F_US_ResetTx (int ) ;
 int MAX_UARTS ;
 scalar_t__ port_detected ;
 scalar_t__ us ;
 scalar_t__* usa ;

void at91_init_uarts(void)
{
 int i;

 port_detected = 0;
 AT91F_DBGU_CfgPIO();
 AT91F_US0_CfgPIO();
 AT91F_US0_CfgPMC();

 for(i=0; i<MAX_UARTS; i++) {
  us = usa[i];
  AT91F_US_ResetRx((AT91PS_USART)us);
  AT91F_US_ResetTx((AT91PS_USART)us);


  AT91F_US_Configure(
   (AT91PS_USART)us,
   AT91C_MASTER_CLOCK,
   AT91C_US_ASYNC_MODE,
   115200,
   0
   );


  AT91F_US_EnableTx((AT91PS_USART)us);

  AT91F_US_EnableRx((AT91PS_USART)us);
 }
 us = usa[0];
}
