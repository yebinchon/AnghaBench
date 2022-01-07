
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91C_BASE_PIOC ;
 int AT91F_PIO_CfgPeriph (int ,int,int ) ;

__attribute__((used)) static void AT91F_InitSdram()
{
 int *pRegister;



 AT91F_PIO_CfgPeriph(
  AT91C_BASE_PIOC,
  0xFFFF0030,
  0
 );


 pRegister = (int *)0xFFFFFF98;
 *pRegister = 0x2188c155;
 pRegister = (int *)0xFFFFFF90;
 *pRegister = 0x2;
 pRegister = (int *)0x20000000;
 *pRegister = 0;
 pRegister = (int *)0xFFFFFF90;
 *pRegister = 0x4;
 pRegister = (int *)0x20000000;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 *pRegister = 0;
 pRegister = (int *)0xFFFFFF90;
 *pRegister = 0x3;
 pRegister = (int *)0x20000080;
 *pRegister = 0;

 pRegister = (int *)0xFFFFFF94;
 *pRegister = 0x2e0;
 pRegister = (int *)0x20000000;
 *pRegister = 0;

 pRegister = (int *)0xFFFFFF90;
 *pRegister = 0x00;
 pRegister = (int *)0x20000000;
 *pRegister = 0;
}
