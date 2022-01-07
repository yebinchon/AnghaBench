
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 int UART_CTL_HSE ;
 int UART_LCRH_EPS ;
 int UART_LCRH_PEN ;
 int UART_LCRH_SPS ;
 int UART_LCRH_STP2 ;
 int UART_LCRH_WLEN_M ;
 scalar_t__ UART_O_CTL ;
 scalar_t__ UART_O_FBRD ;
 scalar_t__ UART_O_IBRD ;
 scalar_t__ UART_O_LCRH ;

void
UARTConfigGetExpClk(unsigned long ulBase, unsigned long ulUARTClk,
                    unsigned long *pulBaud, unsigned long *pulConfig)
{
    unsigned long ulInt, ulFrac;




    ASSERT(UARTBaseValid(ulBase));




    ulInt = HWREG(ulBase + UART_O_IBRD);
    ulFrac = HWREG(ulBase + UART_O_FBRD);
    *pulBaud = (ulUARTClk * 4) / ((64 * ulInt) + ulFrac);




    if(HWREG(ulBase + UART_O_CTL) & UART_CTL_HSE)
    {




        *pulBaud *= 2;
    }




    *pulConfig = (HWREG(ulBase + UART_O_LCRH) &
                  (UART_LCRH_SPS | UART_LCRH_WLEN_M | UART_LCRH_STP2 |
                   UART_LCRH_EPS | UART_LCRH_PEN));
}
