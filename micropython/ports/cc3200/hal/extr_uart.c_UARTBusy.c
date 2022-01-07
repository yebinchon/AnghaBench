
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int ASSERT (int ) ;
 int HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 int UART_FR_BUSY ;
 scalar_t__ UART_O_FR ;

tBoolean
UARTBusy(unsigned long ulBase)
{



    ASSERT(UARTBaseValid(ulBase));




    return((HWREG(ulBase + UART_O_FR) & UART_FR_BUSY) ? 1 : 0);
}
