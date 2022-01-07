
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 scalar_t__ UART_O_CTL ;
 unsigned long UART_TXINT_MODE_EOT ;
 unsigned long UART_TXINT_MODE_FIFO ;

unsigned long
UARTTxIntModeGet(unsigned long ulBase)
{



    ASSERT(UARTBaseValid(ulBase));




    return(HWREG(ulBase + UART_O_CTL) & (UART_TXINT_MODE_EOT |
                                         UART_TXINT_MODE_FIFO));
}
