
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 scalar_t__ GPIO_O_GPIO_DIR ;
 unsigned long HWREG (scalar_t__) ;

unsigned long
GPIODirModeGet(unsigned long ulPort, unsigned char ucPin)
{
    unsigned long ulDir;




    ASSERT(GPIOBaseValid(ulPort));




    ulDir = HWREG(ulPort + GPIO_O_GPIO_DIR);
    return(((ulDir & ucPin) ? 1 : 0));
}
