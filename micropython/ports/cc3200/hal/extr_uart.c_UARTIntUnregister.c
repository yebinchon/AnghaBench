
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int IntDisable (unsigned long) ;
 int IntUnregister (unsigned long) ;
 int UARTBaseValid (unsigned long) ;
 unsigned long UARTIntNumberGet (unsigned long) ;

void
UARTIntUnregister(unsigned long ulBase)
{
    unsigned long ulInt;




    ASSERT(UARTBaseValid(ulBase));




    ulInt = UARTIntNumberGet(ulBase);




    IntDisable(ulInt);




    IntUnregister(ulInt);
}
