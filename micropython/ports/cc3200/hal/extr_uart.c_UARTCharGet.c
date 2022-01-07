
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 int UART_FR_RXFE ;
 scalar_t__ UART_O_DR ;
 scalar_t__ UART_O_FR ;

long
UARTCharGet(unsigned long ulBase)
{



    ASSERT(UARTBaseValid(ulBase));




    while(HWREG(ulBase + UART_O_FR) & UART_FR_RXFE)
    {
    }




    return(HWREG(ulBase + UART_O_DR));
}
