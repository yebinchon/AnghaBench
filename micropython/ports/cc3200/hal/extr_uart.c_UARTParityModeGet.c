
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 unsigned long UART_LCRH_EPS ;
 unsigned long UART_LCRH_PEN ;
 unsigned long UART_LCRH_SPS ;
 scalar_t__ UART_O_LCRH ;

unsigned long
UARTParityModeGet(unsigned long ulBase)
{



    ASSERT(UARTBaseValid(ulBase));




    return(HWREG(ulBase + UART_O_LCRH) &
           (UART_LCRH_SPS | UART_LCRH_EPS | UART_LCRH_PEN));
}
