
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int IntEnable (unsigned long) ;
 int IntRegister (unsigned long,void (*) ()) ;
 int UARTBaseValid (unsigned long) ;
 unsigned long UARTIntNumberGet (unsigned long) ;

void
UARTIntRegister(unsigned long ulBase, void (*pfnHandler)(void))
{
    unsigned long ulInt;




    ASSERT(UARTBaseValid(ulBase));





    ulInt = UARTIntNumberGet(ulBase);




    IntRegister(ulInt, pfnHandler);




    IntEnable(ulInt);
}
