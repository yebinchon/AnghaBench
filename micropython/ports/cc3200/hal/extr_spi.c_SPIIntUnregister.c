
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IntDisable (unsigned long) ;
 int IntUnregister (unsigned long) ;
 unsigned long SPIIntNumberGet (unsigned long) ;

void
SPIIntUnregister(unsigned long ulBase)
{
    unsigned long ulInt;




    ulInt = SPIIntNumberGet(ulBase);




    IntDisable(ulInt);




    IntUnregister(ulInt);
}
