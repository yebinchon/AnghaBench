
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 scalar_t__ GPIO_O_GPIO_IBE ;
 scalar_t__ GPIO_O_GPIO_IEV ;
 scalar_t__ GPIO_O_GPIO_IS ;
 unsigned long HWREG (scalar_t__) ;

unsigned long
GPIOIntTypeGet(unsigned long ulPort, unsigned char ucPin)
{
    unsigned long ulIBE, ulIS, ulIEV;




    ASSERT(GPIOBaseValid(ulPort));




    ulIBE = HWREG(ulPort + GPIO_O_GPIO_IBE);
    ulIS = HWREG(ulPort + GPIO_O_GPIO_IS);
    ulIEV = HWREG(ulPort + GPIO_O_GPIO_IEV);
    return(((ulIBE & ucPin) ? 1 : 0) | ((ulIS & ucPin) ? 2 : 0) |
           ((ulIEV & ucPin) ? 4 : 0));
}
