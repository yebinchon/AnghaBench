
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_MU_IIR_REG ;
 int AUX_MU_IO_REG ;
 int MU_IIR_RX_CLR ;
 int MU_IIR_RX_READY ;
 int get32 (int ) ;
 int put32 (int ,int ) ;
 int uart_send (char) ;

void handle_uart_irq(void) {
  if (get32(AUX_MU_IIR_REG) & MU_IIR_RX_READY) {
    char c = get32(AUX_MU_IO_REG) & 0xFF;
    put32(AUX_MU_IIR_REG, MU_IIR_RX_CLR);

    uart_send(c);
  }
}
