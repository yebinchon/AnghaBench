
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 unsigned long GPIOGetIntNumber (unsigned long) ;
 int IntDisable (unsigned long) ;
 int IntUnregister (unsigned long) ;

void
GPIOIntUnregister(unsigned long ulPort)
{



    ASSERT(GPIOBaseValid(ulPort));




    ulPort = GPIOGetIntNumber(ulPort);




    IntDisable(ulPort);




    IntUnregister(ulPort);
}
