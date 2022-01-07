
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 int ASSERT (int ) ;
 int GPIOBaseValid (unsigned long) ;
 scalar_t__ GPIO_O_GPIO_MIS ;
 scalar_t__ GPIO_O_GPIO_RIS ;
 long HWREG (scalar_t__) ;

long
GPIOIntStatus(unsigned long ulPort, tBoolean bMasked)
{



    ASSERT(GPIOBaseValid(ulPort));




    if(bMasked)
    {
        return(HWREG(ulPort + GPIO_O_GPIO_MIS));
    }
    else
    {
        return(HWREG(ulPort + GPIO_O_GPIO_RIS));
    }
}
