
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int HWREG (scalar_t__) ;
 int UARTBaseValid (unsigned long) ;
 scalar_t__ UART_O_RSR ;

unsigned long
UARTRxErrorGet(unsigned long ulBase)
{



    ASSERT(UARTBaseValid(ulBase));




    return(HWREG(ulBase + UART_O_RSR) & 0x0000000F);
}
