
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Board_SystemInit () ;
 int Chip_SystemInit () ;
 int fpuInit () ;

void SystemInit(void)
{
 unsigned int *pSCB_VTOR = (unsigned int *) 0xE000ED08;
 Board_SystemInit();

}
