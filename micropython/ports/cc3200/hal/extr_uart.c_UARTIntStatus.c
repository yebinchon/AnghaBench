
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 scalar_t__ UART_O_MIS ;
 scalar_t__ UART_O_RIS ;

unsigned long
UARTIntStatus(unsigned long ulBase, tBoolean bMasked)
{



    ASSERT(UARTBaseValid(ulBase));





    if(bMasked)
    {
        return(HWREG(ulBase + UART_O_MIS));
    }
    else
    {
        return(HWREG(ulBase + UART_O_RIS));
    }
}
