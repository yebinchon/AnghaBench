
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IntEnable (unsigned long) ;
 int IntRegister (unsigned long,void (*) ()) ;
 unsigned long SPIIntNumberGet (unsigned long) ;

void
SPIIntRegister(unsigned long ulBase, void(*pfnHandler)(void))
{
    unsigned long ulInt;




    ulInt = SPIIntNumberGet(ulBase);




    IntRegister(ulInt, pfnHandler);




    IntEnable(ulInt);
}
