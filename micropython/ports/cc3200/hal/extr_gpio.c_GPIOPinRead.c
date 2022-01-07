
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 scalar_t__ GPIO_O_GPIO_DATA ;
 long HWREG (scalar_t__) ;

long
GPIOPinRead(unsigned long ulPort, unsigned char ucPins)
{



    ASSERT(GPIOBaseValid(ulPort));




    return(HWREG(ulPort + (GPIO_O_GPIO_DATA + (ucPins << 2))));
}
