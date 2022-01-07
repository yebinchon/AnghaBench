
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 unsigned long HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 unsigned long UART_IFLS_RX_M ;
 unsigned long UART_IFLS_TX_M ;
 scalar_t__ UART_O_IFLS ;

void
UARTFIFOLevelGet(unsigned long ulBase, unsigned long *pulTxLevel,
                 unsigned long *pulRxLevel)
{
    unsigned long ulTemp;




    ASSERT(UARTBaseValid(ulBase));




    ulTemp = HWREG(ulBase + UART_O_IFLS);




    *pulTxLevel = ulTemp & UART_IFLS_TX_M;
    *pulRxLevel = ulTemp & UART_IFLS_RX_M;
}
