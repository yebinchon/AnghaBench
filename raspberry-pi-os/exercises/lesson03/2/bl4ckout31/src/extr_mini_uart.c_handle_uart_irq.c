
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_MU_IIR_REG ;
 int IIR_REG_REC_NON_EMPTY ;
 int get32 (int ) ;
 int uart_recv () ;
 int uart_send (int ) ;

void handle_uart_irq( void )
{

 while((get32(AUX_MU_IIR_REG) & IIR_REG_REC_NON_EMPTY) ==
       IIR_REG_REC_NON_EMPTY) {
  uart_send(uart_recv());
 }
}
