
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 unsigned long GPIOGetIntNumber (unsigned long) ;
 int IntEnable (unsigned long) ;
 int IntRegister (unsigned long,void (*) ()) ;

void
GPIOIntRegister(unsigned long ulPort, void (*pfnIntHandler)(void))
{



    ASSERT(GPIOBaseValid(ulPort));




    ulPort = GPIOGetIntNumber(ulPort);




    IntRegister(ulPort, pfnIntHandler);




    IntEnable(ulPort);
}
