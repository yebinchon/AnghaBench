
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 unsigned long HWREG (scalar_t__) ;
 unsigned long UARTA1_BASE ;
 unsigned long UART_OUTPUT_RTS ;
 scalar_t__ UART_O_CTL ;

unsigned long
UARTModemControlGet(unsigned long ulBase)
{



    ASSERT(ulBase == UARTA1_BASE);

    return(HWREG(ulBase + UART_O_CTL) & (UART_OUTPUT_RTS));
}
