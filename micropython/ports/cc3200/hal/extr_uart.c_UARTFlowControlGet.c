
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 unsigned long UART_FLOWCONTROL_RX ;
 unsigned long UART_FLOWCONTROL_TX ;
 scalar_t__ UART_O_CTL ;

unsigned long
UARTFlowControlGet(unsigned long ulBase)
{




    ASSERT(UARTBaseValid(ulBase));

    return(HWREG(ulBase + UART_O_CTL) & (UART_FLOWCONTROL_TX |
                                         UART_FLOWCONTROL_RX));
}
